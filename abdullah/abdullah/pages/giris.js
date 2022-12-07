import Head from 'next/head'
import Link from 'next/link'
import {useState, useContext, useEffect} from 'react'
import {DataContext} from '../store/GlobalState'
import {postData} from '../utils/fetchData'
import Cookie from 'js-cookie'
import { useRouter } from 'next/router'

const Signin = () => {
  const initialState = { email: '', password: '' }
  const [userData, setUserData] = useState(initialState)
  const { email, password } = userData

  const {state, dispatch} = useContext(DataContext)
  const { auth } = state

  const router = useRouter()

  const handleChangeInput = e => {
    const {name, value} = e.target
    setUserData({...userData, [name]:value})
    dispatch({ type: 'NOTIFY', payload: {} })
  }

  const handleSubmit = async e => {
    e.preventDefault()
    dispatch({ type: 'NOTIFY', payload: {loading: true} })
    const res = await postData('auth/login', userData)
    
    if(res.err) return dispatch({ type: 'NOTIFY', payload: {error: res.err} })
    dispatch({ type: 'NOTIFY', payload: {success: res.msg} })

    dispatch({ type: 'AUTH', payload: {
      token: res.access_token,
      user: res.user
    }})

    Cookie.set('refreshtoken', res.refresh_token, {
      path: 'api/auth/accessToken',
      expires: 7
    })

    localStorage.setItem('firstLogin', true)
  }

  useEffect(() => {
    if(Object.keys(auth).length !== 0) router.push("/")
  }, [auth])

    return(
      
        <><Head>
        <title>Giriş Yap</title>
      </Head><div>
          <section className="h-100">
            <div className="container h-100">
              <div className="row justify-content-sm-center h-100">
                <div className="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                  <div className="card shadow-lg bg-primary text-light">
                    <div className="card-body p-5">
                      <h1 className="fs-4 card-title fw-bold mb-4">Giriş</h1>
                      <form method="POST" className="needs-validation" noValidate autoComplete="off" onSubmit={handleSubmit}>
                        <div className="mb-3">
                          <label className="mb-2 text-muted" htmlFor="email">email</label>
                          <input id="email" type="email" className="form-control" name="email" required autofocus value={email} onChange={handleChangeInput} />
                        </div>
                        <div className="mb-2 w-100">
                          <label className="text-muted" htmlFor="password">Şifre</label>
                          <input id="password" type="password" className="form-control" name="password" value={password} onChange={handleChangeInput} required />
                        </div>
                        <button type="submit" className="btn ms-auto">
                          Giriş Yap
                        </button>
                      </form>
                    </div>
                    <div className="card-footer py-3 border-0">      
                </div>
              </div>
              <div className="text-center mt-5 text-muted">
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>  </>

                 
    );
  }
  
  export default Signin