<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- PAGE settings -->
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>Styleguide</title>
  <meta name="author" content="Pingendo">
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="wireframe.css" type="text/css"> </head>

<body>
  <div class="py-5 text-center">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h1 class="display-3 text-capitalize">wireframe style guide</h1>
          <p class="lead text-muted">Components designed to fit nicely together </p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Color palette</h2>
          <hr>
          <div class="row text-center">
            <div class="col-md-2 bg-primary m-2">
              <p class="m-0 p-4">Primary</p>
            </div>
            <div class="col-md-2 bg-secondary m-2">
              <p class="m-0 p-4">Secondary</p>
            </div>
            <div class="col-md-2 bg-info m-2">
              <p class="m-0 p-4">Info</p>
            </div>
            <div class="col-md-2 bg-light m-2">
              <p class="m-0 p-4">Light</p>
            </div>
            <div class="col-md-2 bg-dark m-2">
              <p class="m-0 p-4">Dark</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Typography</h2>
          <hr>
          <h1 class="display-4"> Display </h1>
          <h1>Heading</h1>
          <p class="lead">Lead paragraph </p>
          <p>Paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br><i>Italic. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</i> <br><b>Bold. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</b></p>
          <div class="blockquote">
            <p class="mb-0">Blockquoute</p>
            <div class="blockquote-footer">Someone famous in <cite>My memories</cite></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Buttons</h2>
          <hr> </div>
      </div>
      <div class="row">
        <div class="col-12"> <a class="btn btn-primary m-2" href="#">Primary</a> <a class="btn btn-secondary m-2" href="#">Secondary</a> <a class="btn btn-info m-2" href="#">Info</a> <a class="btn btn-light m-2" href="#">Light</a> <a class="btn btn-dark m-2" href="#">Dark</a>          <a class="btn btn-link m-2" href="#">Link</a> </div>
      </div>
      <div class="row">
        <div class="col-12"> <a class="btn btn-outline-primary m-2" href="#">Primary</a> <a class="btn btn-outline-secondary m-2" href="#">Secondary</a> <a class="btn btn-outline-info m-2" href="#">Info</a> <a class="btn btn-outline-light m-2" href="#">Light</a> <a class="btn btn-outline-dark m-2"
            href="#">Dark</a> </div>
      </div>
      <div class="row">
        <div class="col-12"> <a class="btn btn-primary m-2" href="" aria-pressed="false" autocomplete="off" data-toggle="button">Toggle</a>
          <div class="btn-group m-2"> <a href="#" class="btn btn-primary">Btn 1</a> <a href="#" class="btn btn-primary">Btn 2</a> <a href="#" class="btn btn-primary">Btn 3</a> </div>
          <div class="btn-group m-2"> <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Dropdown </button>
            <div class="dropdown-menu">
              <h6 class="dropdown-header">Dropdown header</h6> <a class="dropdown-item" href="#">Option 1</a> <a class="dropdown-item" href="#">Option 2</a> <a class="dropdown-item disabled" href="#">Disabled option</a>
              <div class="dropdown-divider"></div> <a class="dropdown-item" href="#">Separated link</a> </div>
          </div>
          <div class="btn-group m-2"> <button type="button" class="btn btn-primary" href="#">Split dropdown</button> <button type="button" class="btn dropdown-toggle dropdown-toggle-split btn-primary" data-toggle="dropdown" aria-expanded="false" aria-haspopup="true"></button>
            <div
              class="dropdown-menu"> <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a> <a class="dropdown-item" href="#">Something else here</a>
              <div class="dropdown-divider"></div> <a class="dropdown-item" href="#">Separated link</a> </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-12"> <a class="btn btn-primary m-2" href="">Badge<span class="badge badge-secondary ml-1">New!</span></a> <a class="btn btn-primary m-2" href="#"><i class="fa fa-user fa-fw"></i>Icon</a> <a class="btn active btn-primary m-2" href="">Active</a> <a class="btn disabled btn-primary m-2"
          href="">Disabled</a> <a class="btn btn-sm btn-primary m-2" href="">Small</a> <a class="btn btn-primary m-2" href="">Regular</a> <a class="btn btn-lg btn-primary m-2" href="">Large</a> </div>
    </div>
  </div>
  </div>
  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Navs and components</h2>
          <hr> </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <ul class="nav">
            <li class="nav-item"> <a class="nav-link" href="#">Item</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#">Item</a> </li>
            <li class="nav-item"> <a href="#" class="nav-link">Item</a> </li>
            <li class="nav-item"> <a class="nav-link disabled" href="#">Disabled</a> </li>
          </ul>
          <ul class="nav nav-pills my-4">
            <li class="nav-item"> <a href="#" class="nav-link active">Nav pills</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#"><i class="fa fa-lg fa-child"></i> Item</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#"><i class="fa fa-lg fa-anchor mt-1"></i></a> </li>
            <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
              <div class="dropdown-menu"> <a class="dropdown-item" href="#">Option 1</a> <a class="dropdown-item" href="#">Option 2</a>
                <div class="dropdown-divider"></div> <a class="dropdown-item" href="#">Separated link</a> </div>
            </li>
          </ul>
          <ul class="nav nav-tabs">
            <li class="nav-item"> <a href="#home" class="nav-link active" aria-controls="home" aria-selected="true" data-toggle="tab" id="home-tab" role="tab">Home</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#profile" aria-controls="profile" aria-selected="false" data-toggle="tab" id="profile-tab" role="tab">Profile</a> </li>
            <li class="nav-item"> <a href="#contact" class="nav-link" aria-controls="contact" aria-selected="false" data-toggle="tab" id="contact-tab" role="tab">Contact <span class="badge badge-pill badge-warning">!</span></a> </li>
          </ul>
          <div class="tab-content my-2" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</div>
            <div class="tab-pane fade" id="contact" role="tabpanel"
              aria-labelledby="contact-tab">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Consectetur adipiscing elit, sed do eiusmod tempor incididunt. </div>
          </div>
        </div>
        <div class="col-md-6">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"> <a href="#">Home</a> </li>
            <li class="breadcrumb-item"> <a href="#">Parent</a> </li>
            <li class="breadcrumb-item active">Page</li>
          </ul>
          <ul class="pagination">
            <li class="page-item"> <a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span> </a> </li>
            <li class="page-item"> <a class="page-link" href="#">1</a> </li>
            <li class="page-item"> <a class="page-link" href="#">2</a> </li>
            <li class="page-item active"> <a class="page-link" href="#">3</a> </li>
            <li class="page-item disabled"> <a class="page-link" href="#">4</a> </li>
            <li class="page-item"> <a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span> </a> </li>
          </ul>
          <div class="progress my-4">
            <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
          </div>
          <div class="alert alert-info" role="alert"> <button type="button" class="close" data-dismiss="alert" aria-label="Close">×</button>
            <h4 class="alert-heading">Well done! </h4>
            <p class="mb-0">This is an info panel.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Forms</h2>
          <hr> </div>
      </div>
      <div class="row">
        <div class="col-md-6 p-3">
          <form method="post" action="">
            <div class="form-group mb-1"> <input type="email" name="email" class="form-control" placeholder="Enter email"> </div> <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            <div class="form-group my-3"><select class="form-control"><option value="1">1</option><option value="2">2</option><option value="3">3</option></select></div>
            <div class="form-group my-3">
              <div class="input-group">
                <div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">@</span></div> <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Username"> </div>
            </div>
            <div class="form-group my-3"> <input type="file" class="form-control-file" id="exampleFormControlFile1"> </div>
            <div class="form-check form-check-inline"> <label class="form-check-label">
                <input class="form-check-input" type="radio" value="option1" id="inlineRadio1" name="inlineRadioOptions"> 1
              </label> </div>
            <div class="form-check form-check-inline"> <label class="form-check-label">
                <input class="form-check-input" type="radio" value="option2" id="inlineRadio2" name="inlineRadioOptions"> 2
              </label> </div>
            <div class="form-check form-check-inline disabled"> <label class="form-check-label">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled=""> 3
              </label> </div>
            <div class="form-check mt-2"> <input class="form-check-input" type="checkbox" id="exampleCheck1" value="on"><label class="form-check-label" for="exampleCheck1">Remember me</label></div>
            <div class="form-check disabled"> <label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" disabled=""> Disabled option </label> </div> <button type="submit" class="btn btn-primary my-2">Submit button</button> </form>
        </div>
        <div class="col-md-6 p-3">
          <form class="" method="post" action="">
            <div class="form-group"> <input type="email" class="form-control form-control-sm" placeholder="Small input" name="email"> </div>
            <div class="form-group"> <input type="email" class="form-control" name="email" placeholder="Default input"> </div>
            <div class="form-group"> <input type="text" class="form-control form-control-lg" placeholder="Large input"> </div>
          </form>
          <form class="my-3" method="post" action="">
            <div class="form-group"> <input type="text" class="form-control" placeholder="Disabled input" id="disabledTextInput" disabled=""> </div>
            <div class="form-group"> <input type="text" class="form-control is-valid" placeholder="First name" id="validationServer01" required="" value="Valid"> </div>
            <div class="form-group"> <input type="text" class="form-control is-invalid" placeholder="First name" id="validationServer01" required="" value="Invalid">
              <div class="invalid-feedback">Please provide a valid input.</div>
            </div>
          </form>
          <form>
            <div class="form-group">
              <div class="form-check"> <input class="form-check-input" type="checkbox" id="exampleCheck1" value="on"><label class="form-check-label" for="exampleCheck1">Checkbox</label></div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2>Pictures</h2>
          <hr> </div>
      </div>
      <div class="row text-center">
        <div class="col-md-4"> <img class="img-fluid p-3" src="assets/styleguide/people_1.jpg" alt="Card image"> </div>
        <div class="col-md-4"> <img class="img-fluid rounded-circle p-3" src="assets/styleguide/people_2.jpg" alt="Card image"> </div>
        <div class="col-md-4"> <img class="img-fluid img-thumbnail p-3" src="assets/styleguide/people_3.jpg" alt="Card image"> </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="carousel slide my-3" data-ride="carousel" id="carousel-1">
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active"> <img class="d-block img-fluid" src="assets/styleguide/cover_2.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <h4>Caption #1</h4>
                  <p class="mb-0">Paragraph. Lorem ipsum dolor sit&nbsp;</p>
                </div>
              </div>
              <div class="carousel-item"> <img class="d-block img-fluid" src="assets/styleguide/cover_3.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <h4>Caption #2</h4>
                  <p class="mb-0">Paragraph. Lorem ipsum dolor sit&nbsp;</p>
                </div>
              </div>
            </div> <a class="carousel-control-prev" role="#carousel-1" data-slide="prev" href="#carousel-1"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="carousel-control-next" role="button"
              data-slide="next" href="#carousel-1"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
        </div>
        <div class="col-md-6">
          <div class="carousel slide my-3" data-ride="carousel" id="carousel-2" data-interval="5000">
            <ol class="carousel-indicators">
              <li data-target="#carousel-2" data-slide-to="0" class="active">&nbsp;</li>
              <li data-target="#carousel-2" data-slide-to="1">&nbsp;</li>
              <li data-target="#carousel-2" data-slide-to="2">&nbsp;</li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active"> <img class="d-block img-fluid" src="assets/styleguide/cover_1.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <p class="lead">Caption #1</p>
                </div>
              </div>
              <div class="carousel-item"> <img class="d-block img-fluid" src="assets/styleguide/cover_4.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <p class="lead">Caption #2</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Cards</h2>
          <hr class="mb-4"> </div>
      </div>
      <div class="row">
        <div class="col-md-4 p-3">
          <div class="card">
            <div class="card-body">
              <h5>A Card</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
          <div class="card my-4">
            <div class="card-header bg-primary">
              <h5 class="mb-0 text-center">A Card Header</h5>
            </div>
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
            <div class="card-footer">A Card footer</div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="bg-primary card"> <img class="img-fluid rounded-circle w-75 mx-auto mt-3" src="assets/styleguide/people_5.jpg" alt="Card image">
            <div class="card-body">
              <h4 class="card-title">Card</h4>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card">
            <div class="card-img-overlay align-items-center d-flex">
              <h4 class="w-100 text-center mb-0 text-white"><b>Card Image Overlay</b></h4>
            </div> <img class="img-fluid w-100 rounded" src="assets/styleguide/people_6.jpg" alt="Card image"> </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Listing</h2>
          <hr class="mb-4"> </div>
      </div>
      <div class="row">
        <div class="col-md-6 p-3">
          <ul class="list-group">
            <li class="list-group-item">List group <i class="fa fa-fw fa-bicycle"></i> </li>
            <li class="list-group-item active"> Active list item</li>
            <li class="list-group-item disabled">Disabled list item</li> <a href="#" class="list-group-item list-group-item-action">Link list item</a> </ul>
        </div>
        <div class="col-md-6 p-3">
          <table class="table table-hover table-striped table-bordered">
            <thead class="thead-inverse">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Striped table</th>
                <th scope="col">bordered</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>example</td>
                <td>one</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>example</td>
                <td>two</td>
              </tr>
              <tr class="bg-info">
                <th scope="row">3</th>
                <td>example</td>
                <td>three</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <div class="pt-5">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Navigation</h2>
          <hr class="mb-4"> </div>
      </div>
    </div>
  </div>
  <nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container"> <a class="navbar-brand" href="#"><b>Navbar Primary&nbsp;</b></a> <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarPrimarySupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbarPrimarySupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item"> <a class="nav-link" href="#"> Nav item</a> </li>
        </ul> <a class="btn navbar-btn ml-2 btn-secondary" href="#"> Button</a> </div>
    </div>
  </nav>
  <nav class="navbar navbar-expand-md navbar-dark bg-secondary my-3">
    <div class="container"> <a class="navbar-brand" href="#"><b>Navbar Secondary</b></a> <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSecondarySupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbarSecondarySupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"> <a class="nav-link" href="#"><i class="fa d-inline fa-lg fa-bookmark-o"></i></a> </li>
        </ul> <a class="btn navbar-btn ml-2 text-white btn-primary" href="#"><i class="fa d-inline fa-lg fa-user-circle-o ml-1"></i>&nbsp;</a> </div>
    </div>
  </nav>
  <nav class="navbar navbar-expand-md my-3 navbar-light bg-light">
    <div class="container"> <a class="navbar-brand" href="#"><b>Navbar Light</b></a> <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarLightSupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbarLightSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item mx-1"> <a class="nav-link" href="#"><i class="fa d-inline fa-facebook-square"></i>&nbsp; share</a> </li>
          <li class="nav-item mx-1"> <a class="nav-link" href="#"><i class="fa d-inline fa-twitter"></i>&nbsp; tweet</a> </li>
          <li class="nav-item mx-1"> <a class="nav-link" href="#"><i class="fa d-inline fa-pinterest"></i>&nbsp; pin</a> </li>
        </ul>
      </div>
    </div>
  </nav>
  <nav class="navbar navbar-expand-md my-3 navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="#"><b>Navbar Dark</b></a> <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarDarkSupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbarDarkSupportedContent">
        <ul class="navbar-nav"></ul>
        <form class="form-inline my-2 my-lg-0"> <input class="form-control mr-sm-2" type="text" placeholder="Search"> <button class="btn my-2 my-sm-0 btn-primary" type="submit">Search</button> </form>
      </div>
    </div>
  </nav>
  <div class="pt-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2>Sections</h2>
          <hr class="mb-4"> </div>
      </div>
    </div>
  </div> 
  <div class="py-4 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small> </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small> </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="bg-info p-4">
    <div class="container">
      <div class="row">
        <div class="p-0 col-lg-4 col-md-6">
          <img class="img-fluid" src="https://maps.googleapis.com/maps/api/staticmap?key=AIzaSyDW8nO9JhT_pEjebobq9pgUF2cEp0EUb1I&amp;markers=folsom+Ave+san+francisco&amp;center=folsom+Ave+san+francisco&amp;zoom=16&amp;size=640x450&amp;sensor=false&amp;scale=2"> </div>
        <div class="col-md-5 align-self-center p-4 offset-md-1">
          <h4>Heading</h4>
          <p class="mb-4 text-primary">795 Folsom Ave, Suite 600
            <br>San Francisco, CA 94107
            <br> <abbr title="Phone">P:</abbr> (123) 456-7890 </p>
          <div class="row text-center">
            <div class="col-md-2 col-3">
              <a href="#" target="_blank"><i class="fa fa-facebook text-primary fa-2x"></i></a>
            </div>
            <div class="col-md-2 col-3">
              <a href="#" target="_blank"><i class="fa fa-twitter text-primary fa-2x"></i></a>
            </div>
            <div class="col-md-2 col-3">
              <a href="#" target="_blank"><i class="fa fa-instagram text-primary fa-2x"></i></a>
            </div>
            <div class="col-md-2 col-3">
              <a href="#" target="_blank"><i class="fa text-primary fa-2x fa-pinterest-p"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="text-center mx-auto col-md-8"> <i class="fa d-block fa-bullseye fa-5x mb-4 text-info"></i>
          <p class="lead">Below is an example form built entirely with Bootstrap&apos;s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-primary">
    <div class="container">
      <div class="row">
        <div class="p-4 col-lg-8">
          <h4 class="mb-3 text-white">Heading 4</h4>
          <div class="blockquote text-muted">
            <p class="mb-0">Blockquoute -&#xA0;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>
            <div class="blockquote-footer">Someone famous in My memories</div>
          </div>
          <a class="btn btn-info" href="#">Button </a>
        </div>
        <div class="col-md-4 align-self-center">
          <img class="img-fluid d-block" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg"> </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row pt-5 border-top">
        <div class="col-12 col-md"> <i class="fa fa-lg fa-bullseye d-block mb-2"></i> <small class="d-block mb-3 text-muted">&#xA9; 2017-2018</small> </div>
        <div class="col-6 col-md">
          <h5><b>Features</b></h5>
          <ul class="list-unstyled">
            <li>
              <a class="text-muted" href="#">Cool stuff</a>
            </li>
            <li>
              <a class="text-muted" href="#">Random feature</a>
            </li>
            <li>
              <a class="text-muted" href="#">Team feature</a>
            </li>
            <li>
              <a class="text-muted" href="#">Stuff for developers</a>
            </li>
            <li>
              <a class="text-muted" href="#">Another one</a>
            </li>
            <li>
              <a class="text-muted" href="#">Last time</a>
            </li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5><b>Resources</b></h5>
          <ul class="list-unstyled">
            <li>
              <a class="text-muted" href="#">Resource</a>
            </li>
            <li>
              <a class="text-muted" href="#">Resource name</a>
            </li>
            <li>
              <a class="text-muted" href="#">Another resource</a>
            </li>
            <li>
              <a class="text-muted" href="#">Final resource</a>
            </li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5><b>About</b></h5>
          <ul class="list-unstyled">
            <li>
              <a class="text-muted" href="#">Team</a>
            </li>
            <li>
              <a class="text-muted" href="#">Locations</a>
            </li>
            <li>
              <a class="text-muted" href="#">Privacy</a>
            </li>
            <li>
              <a class="text-muted" href="#">Terms</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <script src="http://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>