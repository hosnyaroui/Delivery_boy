import "./single.scss";
import Sidebar from "../../components/sidebar/Sidebar";
import Navbar from "../../components/navbar/Navbar";
import Chart from "../../components/chart/Chart";
import List from "../../components/table/Table";

const Single = () => {
  return (
    <div className="single">
      <Sidebar />
      <div className="singleContainer">
        <Navbar />
        <div className="top">
          <div className="left">
            <div className="editButton">Modifer</div>
            <h1 className="title">Information</h1>
            <div className="item">
              <img
                src="https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
                alt=""
                className="itemImg"
              />
              <div className="details">
                <h1 className="itemTitle">Aicha Atia</h1>
                <div className="detailItem">
                  <span className="itemKey">Email:</span>
                  <span className="itemValue">geekhosny@gmail.com</span>
                </div>
                <div className="detailItem">
                  <span className="itemKey">Numéro de téléphone:</span>
                  <span className="itemValue">+21626851365</span>
                </div>
                <div className="detailItem">
                  <span className="itemKey">Addresse:</span>
                  <span className="itemValue">
                    R9 Rue baghdad Monastir
                  </span>
                </div>
                <div className="detailItem">
                  <span className="itemKey">Région:</span>
                  <span className="itemValue">Monastir</span>
                </div>
              </div>
            </div>
          </div>
          <div className="right">
            <Chart aspect={3 / 1} title="Dépenses des utilisateurs (6 derniers mois)" />
          </div>
        </div>
        <div className="bottom">
        <h1 className="title">Dernières transactions</h1>
          <List/>
        </div>
      </div>
    </div>
  );
};

export default Single;
