import React from 'react'

const ImageCard = (props) => {
    const { image } = props

    return (
        <div className="image-card"
        >
            <img src={image.url} alt={image.title} />
            <div className="image-specs">
                <h4><b>{image.title}</b></h4>
                <p>Explanation: {image.explanation}</p>
            </div>
        </div>

    )
}

export default ImageCard;