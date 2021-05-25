# Dish API


## Display a listing of the resource.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X GET \
    -G "http://restaurant-api.test/api/dishes" \
    -H "Authorization: Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://restaurant-api.test/api/dishes"
);

let headers = {
    "Authorization": "Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn",
    "Content-Type": "application/json",
    "Accept": "application/json",
};


fetch(url, {
    method: "GET",
    headers,
}).then(response => response.json());
```


> Example response (200):

```json
{
    "code": 1,
    "data": [
        {
            "id": 1,
            "name": "quaerat porro odit",
            "price": 2355,
            "description": "Doloremque quibusdam sit cumque fugit. Iure enim ipsum voluptas voluptate eveniet ducimus. Necessitatibus sit facilis ut fugit nesciunt.\n\nVoluptate praesentium velit voluptatem quam consectetur. Tempora laborum qui eius delectus officia voluptatum. Sed dolor eaque omnis quaerat quam nesciunt.\n\nSoluta ipsam nulla dolorum dolores qui possimus veniam. Vero accusantium optio hic aut voluptatibus vel. Excepturi laborum accusamus architecto quos. Assumenda iste voluptatum voluptatem vitae et ratione. Consectetur sunt omnis voluptatem molestiae.",
            "created_at": "2021-05-25T13:34:54.000000Z",
            "updated_at": "2021-05-25T13:34:54.000000Z"
        },
        {
            "id": 2,
            "name": "facilis animi in",
            "price": 9153,
            "description": "Quo repudiandae quos est est dolores qui. Consequuntur architecto sequi dignissimos recusandae quas. Sed at dolores officiis dolor veniam ut vitae. Similique rem velit quae. Eius et quasi eligendi necessitatibus esse vitae.\n\nTenetur voluptatum cum similique qui sunt corrupti. Quia ducimus exercitationem eligendi ab. Laborum molestiae ullam dicta itaque voluptatum nam. Aperiam maxime atque omnis non dolores sunt.\n\nConsequatur amet laudantium perspiciatis dolor asperiores laborum cum. Enim sit harum quia consequatur totam fuga. Eligendi commodi voluptas magnam accusantium enim eum quisquam alias. Minima nihil nihil nisi dolore ut ut sequi laboriosam.",
            "created_at": "2021-05-25T13:34:54.000000Z",
            "updated_at": "2021-05-25T13:34:54.000000Z"
        },
        {
            "id": 3,
            "name": "dolor quam natus",
            "price": 9661,
            "description": "Alias debitis id aspernatur explicabo. Quia fuga quae numquam voluptates consequuntur veritatis fuga consequuntur. Ea necessitatibus voluptatem provident adipisci sequi sequi iste.\n\nId magni totam totam ratione ipsa et. Reiciendis explicabo incidunt enim cum.\n\nEnim et ea asperiores facilis. Qui a qui quia et velit assumenda optio. Quia et adipisci in maxime accusamus fuga iure.",
            "created_at": "2021-05-25T13:34:54.000000Z",
            "updated_at": "2021-05-25T13:34:54.000000Z"
        },
        {
            "id": 4,
            "name": "est magni perferendis",
            "price": 4792,
            "description": "Nulla sunt neque sunt molestiae. Est earum dignissimos accusamus dicta quo. Velit deserunt voluptatibus mollitia. Et qui ducimus saepe eaque eos alias ipsam. Eos itaque debitis ipsum illum reiciendis omnis autem.\n\nItaque blanditiis laborum deleniti. Vel quia est odio. Omnis ut mollitia at odio soluta. Adipisci a corrupti quia aut ratione perspiciatis.\n\nDolor quod iusto iste est enim quis veniam. Assumenda quia aut nemo et minima aut. Saepe quibusdam ea asperiores provident.",
            "created_at": "2021-05-25T13:34:54.000000Z",
            "updated_at": "2021-05-25T13:34:54.000000Z"
        },
        {
            "id": 5,
            "name": "ut et vel",
            "price": 2631,
            "description": "Autem expedita rem minus fuga. Aliquam expedita est ipsa cumque expedita ea id. Ad nihil labore non distinctio. Suscipit sed minima quibusdam non quisquam dolor sapiente.\n\nSed ad amet et vel qui commodi eveniet. Sunt unde ab sit enim. Voluptas sunt sed aliquam laboriosam aut quisquam.\n\nEsse omnis sint libero at natus maxime qui. Consequatur sed sequi sequi iusto dolore. Autem non qui aut tenetur.",
            "created_at": "2021-05-25T13:34:54.000000Z",
            "updated_at": "2021-05-25T13:34:54.000000Z"
        }
    ]
}
```
<div id="execution-results-GETapi-dishes" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-dishes"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-dishes"></code></pre>
</div>
<div id="execution-error-GETapi-dishes" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-dishes"></code></pre>
</div>
<form id="form-GETapi-dishes" data-method="GET" data-path="api/dishes" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-dishes', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-dishes" onclick="tryItOut('GETapi-dishes');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-dishes" onclick="cancelTryOut('GETapi-dishes');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-dishes" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/dishes</code></b>
</p>
<p>
<label id="auth-GETapi-dishes" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="GETapi-dishes" data-component="header"></label>
</p>
</form>


## Store a newly created resource in storage.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X POST \
    "http://restaurant-api.test/api/dishes?name=doloremque&price=95.9035&description=nihil" \
    -H "Authorization: Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://restaurant-api.test/api/dishes"
);

let params = {
    "name": "doloremque",
    "price": "95.9035",
    "description": "nihil",
};
Object.keys(params)
    .forEach(key => url.searchParams.append(key, params[key]));

let headers = {
    "Authorization": "Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn",
    "Content-Type": "application/json",
    "Accept": "application/json",
};


fetch(url, {
    method: "POST",
    headers,
}).then(response => response.json());
```


> Example response (200):

```json
{
    "code": 1,
    "data": {
        "name": "doloremque",
        "price": 95.9035,
        "description": "nihil",
        "updated_at": "2021-05-25T13:34:57.000000Z",
        "created_at": "2021-05-25T13:34:57.000000Z",
        "id": 6
    }
}
```
<div id="execution-results-POSTapi-dishes" hidden>
    <blockquote>Received response<span id="execution-response-status-POSTapi-dishes"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-POSTapi-dishes"></code></pre>
</div>
<div id="execution-error-POSTapi-dishes" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-POSTapi-dishes"></code></pre>
</div>
<form id="form-POSTapi-dishes" data-method="POST" data-path="api/dishes" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('POSTapi-dishes', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-POSTapi-dishes" onclick="tryItOut('POSTapi-dishes');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-POSTapi-dishes" onclick="cancelTryOut('POSTapi-dishes');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-POSTapi-dishes" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-black">POST</small>
 <b><code>api/dishes</code></b>
</p>
<p>
<label id="auth-POSTapi-dishes" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="POSTapi-dishes" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>Query Parameters</b></h4>
<p>
<b><code>name</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="name" data-endpoint="POSTapi-dishes" data-component="query"  hidden>
<br>
Name of dish
</p>
<p>
<b><code>price</code></b>&nbsp;&nbsp;<small>number</small>     <i>optional</i> &nbsp;
<input type="number" name="price" data-endpoint="POSTapi-dishes" data-component="query"  hidden>
<br>
Price of dish
</p>
<p>
<b><code>description</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="description" data-endpoint="POSTapi-dishes" data-component="query"  hidden>
<br>
Description of dish
</p>
</form>


## Display the specified resource.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X GET \
    -G "http://restaurant-api.test/api/dishes/1" \
    -H "Authorization: Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://restaurant-api.test/api/dishes/1"
);

let headers = {
    "Authorization": "Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn",
    "Content-Type": "application/json",
    "Accept": "application/json",
};


fetch(url, {
    method: "GET",
    headers,
}).then(response => response.json());
```


> Example response (200):

```json
{
    "code": true,
    "data": {
        "id": 1,
        "name": "quaerat porro odit",
        "price": 2355,
        "description": "Doloremque quibusdam sit cumque fugit. Iure enim ipsum voluptas voluptate eveniet ducimus. Necessitatibus sit facilis ut fugit nesciunt.\n\nVoluptate praesentium velit voluptatem quam consectetur. Tempora laborum qui eius delectus officia voluptatum. Sed dolor eaque omnis quaerat quam nesciunt.\n\nSoluta ipsam nulla dolorum dolores qui possimus veniam. Vero accusantium optio hic aut voluptatibus vel. Excepturi laborum accusamus architecto quos. Assumenda iste voluptatum voluptatem vitae et ratione. Consectetur sunt omnis voluptatem molestiae.",
        "created_at": "2021-05-25T13:34:54.000000Z",
        "updated_at": "2021-05-25T13:34:54.000000Z"
    }
}
```
<div id="execution-results-GETapi-dishes--dish-" hidden>
    <blockquote>Received response<span id="execution-response-status-GETapi-dishes--dish-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-GETapi-dishes--dish-"></code></pre>
</div>
<div id="execution-error-GETapi-dishes--dish-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-GETapi-dishes--dish-"></code></pre>
</div>
<form id="form-GETapi-dishes--dish-" data-method="GET" data-path="api/dishes/{dish}" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('GETapi-dishes--dish-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-GETapi-dishes--dish-" onclick="tryItOut('GETapi-dishes--dish-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-GETapi-dishes--dish-" onclick="cancelTryOut('GETapi-dishes--dish-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-GETapi-dishes--dish-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-green">GET</small>
 <b><code>api/dishes/{dish}</code></b>
</p>
<p>
<label id="auth-GETapi-dishes--dish-" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="GETapi-dishes--dish-" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>dish</code></b>&nbsp;&nbsp;<small>integer</small>  &nbsp;
<input type="number" name="dish" data-endpoint="GETapi-dishes--dish-" data-component="url" required  hidden>
<br>
Id of dish.
</p>
</form>


## Update the specified resource in storage.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X PUT \
    "http://restaurant-api.test/api/dishes/1?name=qui&price=1362100.029162&description=voluptate" \
    -H "Authorization: Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://restaurant-api.test/api/dishes/1"
);

let params = {
    "name": "qui",
    "price": "1362100.029162",
    "description": "voluptate",
};
Object.keys(params)
    .forEach(key => url.searchParams.append(key, params[key]));

let headers = {
    "Authorization": "Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn",
    "Content-Type": "application/json",
    "Accept": "application/json",
};


fetch(url, {
    method: "PUT",
    headers,
}).then(response => response.json());
```


> Example response (200):

```json
{
    "code": 1,
    "data": {
        "name": "qui",
        "price": 1362100.029162,
        "description": "voluptate",
        "updated_at": "2021-05-25T13:34:57.000000Z",
        "created_at": "2021-05-25T13:34:57.000000Z",
        "id": 7
    }
}
```
<div id="execution-results-PUTapi-dishes--dish-" hidden>
    <blockquote>Received response<span id="execution-response-status-PUTapi-dishes--dish-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-PUTapi-dishes--dish-"></code></pre>
</div>
<div id="execution-error-PUTapi-dishes--dish-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-PUTapi-dishes--dish-"></code></pre>
</div>
<form id="form-PUTapi-dishes--dish-" data-method="PUT" data-path="api/dishes/{dish}" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('PUTapi-dishes--dish-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-PUTapi-dishes--dish-" onclick="tryItOut('PUTapi-dishes--dish-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-PUTapi-dishes--dish-" onclick="cancelTryOut('PUTapi-dishes--dish-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-PUTapi-dishes--dish-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-darkblue">PUT</small>
 <b><code>api/dishes/{dish}</code></b>
</p>
<p>
<small class="badge badge-purple">PATCH</small>
 <b><code>api/dishes/{dish}</code></b>
</p>
<p>
<label id="auth-PUTapi-dishes--dish-" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="PUTapi-dishes--dish-" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>dish</code></b>&nbsp;&nbsp;<small>integer</small>     <i>optional</i> &nbsp;
<input type="number" name="dish" data-endpoint="PUTapi-dishes--dish-" data-component="url"  hidden>
<br>
Id of dish.
</p>
<h4 class="fancy-heading-panel"><b>Query Parameters</b></h4>
<p>
<b><code>name</code></b>&nbsp;&nbsp;<small>string</small>  &nbsp;
<input type="text" name="name" data-endpoint="PUTapi-dishes--dish-" data-component="query" required  hidden>
<br>
Name of dish
</p>
<p>
<b><code>price</code></b>&nbsp;&nbsp;<small>number</small>  &nbsp;
<input type="number" name="price" data-endpoint="PUTapi-dishes--dish-" data-component="query" required  hidden>
<br>
Price of dish
</p>
<p>
<b><code>description</code></b>&nbsp;&nbsp;<small>string</small>     <i>optional</i> &nbsp;
<input type="text" name="description" data-endpoint="PUTapi-dishes--dish-" data-component="query"  hidden>
<br>
Description of dish
</p>
</form>


## Remove the specified resource from storage.

<small class="badge badge-darkred">requires authentication</small>



> Example request:

```bash
curl -X DELETE \
    "http://restaurant-api.test/api/dishes/1" \
    -H "Authorization: Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://restaurant-api.test/api/dishes/1"
);

let headers = {
    "Authorization": "Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn",
    "Content-Type": "application/json",
    "Accept": "application/json",
};


fetch(url, {
    method: "DELETE",
    headers,
}).then(response => response.json());
```


> Example response (200):

```json
{
    "code": 1
}
```
<div id="execution-results-DELETEapi-dishes--dish-" hidden>
    <blockquote>Received response<span id="execution-response-status-DELETEapi-dishes--dish-"></span>:</blockquote>
    <pre class="json"><code id="execution-response-content-DELETEapi-dishes--dish-"></code></pre>
</div>
<div id="execution-error-DELETEapi-dishes--dish-" hidden>
    <blockquote>Request failed with error:</blockquote>
    <pre><code id="execution-error-message-DELETEapi-dishes--dish-"></code></pre>
</div>
<form id="form-DELETEapi-dishes--dish-" data-method="DELETE" data-path="api/dishes/{dish}" data-authed="1" data-hasfiles="0" data-headers='{"Authorization":"Bearer ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn","Content-Type":"application\/json","Accept":"application\/json"}' onsubmit="event.preventDefault(); executeTryOut('DELETEapi-dishes--dish-', this);">
<h3>
    Request&nbsp;&nbsp;&nbsp;
        <button type="button" style="background-color: #8fbcd4; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-tryout-DELETEapi-dishes--dish-" onclick="tryItOut('DELETEapi-dishes--dish-');">Try it out ⚡</button>
    <button type="button" style="background-color: #c97a7e; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-canceltryout-DELETEapi-dishes--dish-" onclick="cancelTryOut('DELETEapi-dishes--dish-');" hidden>Cancel</button>&nbsp;&nbsp;
    <button type="submit" style="background-color: #6ac174; padding: 5px 10px; border-radius: 5px; border-width: thin;" id="btn-executetryout-DELETEapi-dishes--dish-" hidden>Send Request 💥</button>
    </h3>
<p>
<small class="badge badge-red">DELETE</small>
 <b><code>api/dishes/{dish}</code></b>
</p>
<p>
<label id="auth-DELETEapi-dishes--dish-" hidden>Authorization header: <b><code>Bearer </code></b><input type="text" name="Authorization" data-prefix="Bearer " data-endpoint="DELETEapi-dishes--dish-" data-component="header"></label>
</p>
<h4 class="fancy-heading-panel"><b>URL Parameters</b></h4>
<p>
<b><code>dish</code></b>&nbsp;&nbsp;<small>integer</small>     <i>optional</i> &nbsp;
<input type="number" name="dish" data-endpoint="DELETEapi-dishes--dish-" data-component="url"  hidden>
<br>
Id of dish.
</p>
</form>



