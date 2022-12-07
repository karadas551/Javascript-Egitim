import React, { useContext } from 'react'
import Link from 'next/link'
import { useRouter } from 'next/router'
import { DataContext } from '../store/GlobalState'
import Cookie from 'js-cookie'


function NavBar() {
    const router = useRouter()
    const { state, dispatch } = useContext(DataContext)
    const { auth, cart } = state


    const isActive = (r) => {
        if (r === router.pathname) {
            return " active"
        } else {
            return ""
        }
    }

    const handleLogout = () => {
        Cookie.remove('refreshtoken', { path: 'api/auth/accessToken' })
        localStorage.removeItem('firstLogin')
        dispatch({ type: 'AUTH', payload: {} })
        dispatch({ type: 'NOTIFY', payload: { success: 'Çıkış Yapıldı!' } })
        return router.push('/')
    }

    const adminRouter = () => {
        return (
            <>
                <Link href="/users">
                    <a className="dropdown-item">Users</a>
                </Link>
                <Link href="/create">
                    <a className="dropdown-item">Products</a>
                </Link>
                <Link href="/categories">
                    <a className="dropdown-item">Categories</a>
                </Link>
            </>
        )
    }

    const loggedRouter = () => {
        return (
            <li className="nav-item dropdown">
                <a className="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img src={auth.user.avatar} alt={auth.user.avatar}
                        style={{
                            borderRadius: '50%', width: '30px', height: '30px',
                            transform: 'translateY(-3px)', marginRight: '3px'
                        }} /> {auth.user.name}
                </a>

                <div className="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <Link href="/profile">
                        <a className="dropdown-item">Profil</a>
                    </Link>
                    {
                        auth.user.role === 'admin' && adminRouter()
                    }
                    <div className="dropdown-divider"></div>
                    <button className="dropdown-item" onClick={handleLogout}>Çıkış Yap</button>
                </div>
            </li>
        )
    }

    return (
        <><nav className="navbar navbar-expand-lg navbar-light bg-light ">
            <div className="container-fluid ">
                <Link href="/">
                   <h1><p>Karadaş A.Ş</p> </h1>
                </Link>
                <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon" />
        </button>
                <div className="collapse navbar-collapse" id="navbarSupportedContent">
                <ul className="nav nav-tabs">
  <li className="nav-item">
    <a className="nav-link active" aria-current="page" href="http://localhost:3000/icerik">
      Anasayfa
    </a>
  </li>
  <li className="nav-item">
    <a className="nav-link active" aria-current="page" href="http://localhost:3000/kullanicilar">
      Kullanıcı Yönetimi 
    </a>
  </li>
  <li className="nav-item">
    <a className="nav-link active" aria-current="page" href="http://localhost:3000/magazalar">
      Mağazalar
    </a>
  </li>
  <li className="nav-item">
    <a className="nav-link active" aria-current="page" href="http://localhost:3000/bilgi">
      Kullanıcı Bilgileri 
    </a>
  </li>
  <div className="carousel-item-active">
<img src="Adsız.png" className='d-block w100' alt="..."/>
</div>
  </ul>
<button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>
                    <div className="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                        <ul className="navbar-nav p-1">
                            {Object.keys(auth).length === 0
                                ?

                                <form className="d-flex">
                                    <Link href="/giris"><button className="btn bg-light mr buton link " type="submit">Giriş Yap</button></Link>
                                    <Link href="/register"><button className="btn bg-light mr buton link" type="submit">Kaydol</button></Link>
                                </form>


                                : loggedRouter()}
                        </ul>
                    </div>
                </div>
            </div>
        </nav><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous" /></>
        
    );
}

export default NavBar
