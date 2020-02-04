import React from 'react'
import ImageCard from './ImageCard'

const ImageContainer = (props) => {
    console.log(props)

    const allImages = props.allImages.map(image => {
        return <ImageCard
            imageAction={ props.imageAction }
            image={ image }
        />
    })

    return (
        <div className="images">
            <h1 className="header">All Images</h1>
            <div className="all-images">
                { allImages }
            </div>
        </div>
    )
}

export default ImageContainer;
