    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Login</h5>
                        <form action="controller.php" method="POST">
                            <input type="hidden" name="page" value="createUser">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" class="form-control mb-3" id="username" name="username" placeholder="Enter your Username" required>
                            
                            <label for="email" class="form-label">Email</label>
                            <input type="text" class="form-control mb-3" id="email" name="email" placeholder="Enter your email" required>
                                    
                            <label for="firstName" class="form-label">First Name</label>
                            <input type="text" class="form-control mb-3" id="firstName" name="firstName" placeholder="Enter your first name" required>
                                                    
                            <label for="lastName" class="form-label">Last Name</label>
                            <input type="text" class="form-control mb-3" id="lastName" name="lastName" placeholder="Enter your last name" required>
                          
                            <label for="passwd" class="form-label">Password</label>
                            <input type="text" class="form-control mb-3" id="passwd" name="passwd" placeholder="Enter your Password" required>
                          
                            <button type="submit" class="btn btn-primary">Login</button>
                        </form>
                        <form action="controller.php" method="GET">
                             <input type="hidden" name="page" value="home">
                             <button type="submit" class="btn btn-secondary">Cancel</button>
                        </form>
                    </div>
                </div>      
            </div>
        </div>
    </div>
