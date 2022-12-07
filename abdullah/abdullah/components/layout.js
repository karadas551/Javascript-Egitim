import Head from "next/head";
import Navigation from "../components/navigation"
import Footer from "../components/footer"
import Notify from "./Notify";
import Modal from './Modal'

function Layout({ children }) {
  return (
    <>
      <Head>
        
     </Head> 
      <Navigation />
      <Notify/>
      <Modal />
      <main>{children}</main>
      <Footer />
      </>
    
    
  );
}

export default Layout;
