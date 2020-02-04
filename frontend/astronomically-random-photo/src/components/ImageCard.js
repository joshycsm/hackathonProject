import React from 'react'

const ImageCard = (props) => {
    const { image } = props

    const handleClick = () => {
        props.imageAction(image)
    }

    return (
        <div className="image-card" onClick={ handleClick } >
            <img src={image.url} alt={image.title} />
            <div className="image-specs">
                <h4><b>{image.title}</b></h4>
            </div>
        </div>

    )
}

export default ImageCard;