import React from "react"

const ImageSearch = (props) => {

    const updateSearchTerm = event => {
        props.updateSearchTerm(event.target.value)
    }

    return (
        <form className="image-filter">
            <input
                type="text"
                value={props.searchTerm}
                placeholder="Search Images"
                onChange={updateSearchTerm}
            />
        </form>
    )
}

export default ImageSearch;