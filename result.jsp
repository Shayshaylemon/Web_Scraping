<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%= request.getAttribute("doctype")%>

<html>
    <head>
        <title>Interesting Picture</title>
    </head>
    <body>
        <h1>Here is an interesting picture of a <%= request.getAttribute("pictureTag")%></h1><br>
        <img <%= request.getAttribute("pictureURL")%>><br><br>
         <p>Choose another category:</p>
        <form action="Project1Task4" method="GET">
          <select name="searchWord"/>
            <option value="5x7">5x7</option>
            <option value="arrogance">arrogance</option>
            <option value="booze">booze</option>
            <option value="brands">brands</option>
            <option value="communication">communication</option>
            <option value="consumption">consumption</option>
            <option value="creeps">creeps</option>
            <option value="crime">crime</option>
            <option value="easter-bunny">easter bunny</option>
            <option value="ego">ego</option>
            <option value="ethics">ethics</option>
            <option value="excuses">excuses</option>
            <option value="expectations">expectations</option>
            <option value="experience">experience</option>
            <option value="faith">faith</option>
            <option value="family">family</option>
            <option value="fashion">fashion</option>
            <option value="finances">finances</option>
            <option value="friends">friends</option>
            <option value="gum">gum</option>
            <option value="halloween">halloween</option>
            <option value="hipsters">hipsters</option>
            <option value="inequality">inequality</option>
            <option value="kids">kids</option>
            <option value="language">language</option>
            <option value="love">love</option>
            <option value="men">men</option>
            <option value="moderation">moderation</option>
            <option value="monsters">monsters</option>
            <option value="music">music</option>
            <option value="optimism">optimism</option>
            <option value="orthodontics">orthodontics</option>
            <option value="pain">pain</option>
            <option value="parties">parties</option>
            <option value="patience">patience</option>
            <option value="perception">perception</option>
            <option value="philosophy">philosophy</option>
            <option value="politics">politics</option>
            <option value="pop-culture">pop culture</option>
            <option value="queens">queens</option>
            <option value="santa">santa</option>
            <option value="school">school</option>
            <option value="sickness">sickness</option>
            <option value="snobs">snobs</option>
            <option value="snuggling">snuggling</option>
            <option value="sports">sports</option>
            <option value="standards">standards</option>
            <option value="stress">stress</option>
            <option value="success">success</option>
            <option value="technology">technology</option>
            <option value="television">television</option>
            <option value="tooth-fairy">tooth fairy</option>
            <option value="travel">travel</option>
            <option value="uncategorized">Uncategorized</option>
            <option value="value">value</option>
            <option value="virginity">virginity</option>
            <option value="weight">weight</option>
            <option value="women">women</option>
            <option value="work">work</option>
            <option value="xenophobia">xenophobia</option>
        </select>
            <input type="submit" value="Click Here" />
        </form>
          <p> <a href="http://thisisindexed.com">Indexed</a> is copyrighted by Jessica Hagy.</p>
    </body>
</html>
