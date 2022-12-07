import Head from 'next/head'
import { useState, useContext, useEffect } from 'react'
import {DataContext} from '../store/GlobalState'
 
import Image from "next/image";
import {useRouter} from 'next/router'

const Home = (props) => {
  const [products, setProducts] = useState(props.products)

  const [isCheck, setIsCheck] = useState(false)
  const [page, setPage] = useState(1)
  const router = useRouter()

  const {state, dispatch} = useContext(DataContext)
  const {auth} = state

  return(
     
    <main>
      <table class="table caption-top">
  <caption>Kullanıcı Listesi</caption>
  <thead>
    <tr>
      <th scope="col">Bulunduğu Mağaza</th>
      <th scope="col">Mağaza Görevlileri</th>
      <th scope="col">Ürün Temin Tarihi</th>
      <th scope="col">Tır Şoförü İsmi</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td scope="row">Aksaray</td>
      <td>Gökhan Kantarcı</td>
      <td>13/03/2022</td>
      <td>Harun Emre Kömekçi</td>
    </tr>
    <tr>
      <td scope="row">Aksaray</td>
      <td>Ömer Krmn</td>
      <td>03/03/2022</td>
      <td>Hidayet Yaşar Terzi</td>
    </tr>
    <tr>
      <td scope="row">Aksaray</td>
      <td>Kadir Özütürk</td>
      <td>22/02/2022</td>
      <td>Harun Emre Kömekçi</td>
    </tr>
    <tr>
      <td scope="row">Aksaray</td>
      <td>Ömer Ali Altın</td>
      <td>07/03/2022</td>
      <td>Hidayet Yaşar Terzi</td>
    </tr>
  </tbody>
</table>
</main>
 
    
  )
}




export default Home