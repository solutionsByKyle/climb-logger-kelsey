
function RouteSearch({routeList, searchTerm, setSearchTerm}) {


// currently not searching when submit is hit. maybe that's fine and what I want? Do I want them to render automatically? 


    return(
        <div id='route-search-container'>
            <div id='route-search'>
                <p>Search for a Route by Name or Crag</p>
                <form>
                    <input type="text" placeholder="Find a route..." value={searchTerm} onChange={(e) => setSearchTerm(e.target.value)} ></input>
                    
                </form>

            </div>
        </div>
    )

}

export default RouteSearch;