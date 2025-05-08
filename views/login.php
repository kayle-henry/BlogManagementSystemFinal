    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Login</h5>
                        <form action="controller.php" method="POST">
                            <input type="hidden" name="page" value="login">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" class="form-control mb-3" id="username" name="username" placeholder="Enter your Username" required>
                            <label for="passwd" class="form-label">Password</label>
                            <input type="text" class="form-control mb-3" id="passwd" name="passwd" placeholder="Enter your Password" required>
                        <div class="d-flex gap-2 mt-3">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </form>
                        <form action="controller.php" method="GET">
                            <input type="hidden" name="page" value="home">
                            <button type="submit" class="btn btn-secondary">Cancel</button>"
                            <input type="hidden" name="page" value="newUser">
                            <button type="submit" class="btn btn-secondary">Create Account</button>"
                        </form>
                        </div>
                    </div>
                </div>      
            </div>
        </div>
    </div>
