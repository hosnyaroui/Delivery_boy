import "./featured.scss";
import MoreVertIcon from "@mui/icons-material/MoreVert";
import { CircularProgressbar } from "react-circular-progressbar";
import "react-circular-progressbar/dist/styles.css";
import KeyboardArrowDownIcon from "@mui/icons-material/KeyboardArrowDown";
import KeyboardArrowUpOutlinedIcon from "@mui/icons-material/KeyboardArrowUpOutlined";

const Featured = () => {
  return (
    <div className="featured">
      <div className="top">
        <h1 className="title">Total Revenue</h1>
        <MoreVertIcon fontSize="small" />
      </div>
      <div className="bottom">
        <div className="featuredChart">
          <CircularProgressbar value={70} text={"70%"} strokeWidth={5} />
        </div>
        <p className="title">commandes totales</p>
        <p className="amount">420DT</p>
        <p className="desc">
        Traitement des transactions précédentes. Les derniers paiements peuvent ne pas être inclus.
        </p>
        <div className="summary">
          <div className="item">
            <div className="itemTitle">Objectif</div>
            <div className="itemResult negative">
              <KeyboardArrowDownIcon fontSize="small"/>
              <div className="resultAmount">400DT</div>
            </div>
          </div>
          <div className="item">
            <div className="itemTitle">Dernier semaine</div>
            <div className="itemResult positive">
              <KeyboardArrowUpOutlinedIcon fontSize="small"/>
              <div className="resultAmount">1200DT</div>
            </div>
          </div>
          <div className="item">
            <div className="itemTitle">Dernier mois</div>
            <div className="itemResult positive">
              <KeyboardArrowUpOutlinedIcon fontSize="small"/>
              <div className="resultAmount">1200DT</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Featured;
