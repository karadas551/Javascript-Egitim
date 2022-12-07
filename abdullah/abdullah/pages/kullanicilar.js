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
      <th scope="col">Kullanıcı Adı</th>
      <th scope="col">Soyadı</th>
      <th scope="col">Kullanıcı Görevi</th>
      <th scope="col">Kullanıcı Ayarları</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td scope="row">Metin Can</td>
      <td>Şimşek</td>
      <td>Yönetici</td>
      <td>———</td>
    </tr>
    <tr>
      <td scope="row">Ömer Ali</td>
      <td>Altın</td>
      <td>CEO</td>
      <td>Ekle Sil Düzenle</td>
    </tr>
    <tr>
      <td scope="row">Gökhan</td>
      <td>Kantarcı</td>
      <td>İl Yöneticisi</td>
      <td>Ekle Sil Düzenle</td>
    </tr>
    <tr>
      <td scope="row">Raif</td>
      <td>Kaser</td>
      <td>Mağaza Müdürü</td>
      <td>Ekle Sil Düzenle</td>
    </tr>
    <tr>
      <td scope="row">As.iz Can</td>
      <td>Aras</td>
      <td>Mağaza Görevlisi</td>
      <td>Ekle Sil Düzenle</td>
    </tr>
    <tr>
      <td scope="row">Ömer</td>
      <td>Krmn</td>
      <td>Mağaza Görevlisi</td>
      <td>Ekle Sil Düzenle</td>
    </tr>
    <tr>
      <td scope="row">Kadir</td>
      <td>Özütürk</td>
      <td>Mağaza Görevlisi</td>
      <td>Ekle Sil Düzenle</td>
    </tr>
    <tr>
      <td scope="row">Harun Emre</td>
      <td>Kömekçi</td>
      <td>Tır Şoförü</td>
      <td>Ekle Sil Düzenle</td>
    </tr>
    <tr>
      <td scope="row">Hidayet Yaşar</td>
      <td>Terzi</td>
      <td>Tır Şoförü</td>
      <td>Ekle Sil Düzenle</td>
    </tr>
  </tbody>
</table>

</main>
 
    
  )
}




export default Home