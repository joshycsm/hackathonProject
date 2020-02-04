import React from 'react'
import ImageCard from './ImageCard'

const ToggledImage = (props) => {

    if(props.toggledImage.length !== 0){
    return (
        <div className="toggled-image-card"  >
            <h4><b id="toggled-title">{props.toggledImage[0].title}</b></h4>
            <h6>{props.toggledImage[0].date}</h6>
            <img id="toggled-image" src={props.toggledImage[0].url} />
            <div className="image-specs">
                <p>{props.toggledImage[0].explanation}</p>
            </div>
        </div>
    )} else {
        return (
            <h1>Select an image below for more detail</h1>
        )
    }

}

export default ToggledImage;