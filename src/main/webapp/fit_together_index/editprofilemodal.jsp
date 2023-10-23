<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="editprofilemodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-editproflie">
      <div class="modal-content modal-content-editprofile">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Edit profile</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
         <form action="asmJava4/account/edit-profile" method="post">
        
        <div class="modal-body">
          <div class="row">
            <div class="col-5 avt">
              <img src="./img/avt.jpg"
                alt="Profile Picture" class="profile-picture">
              <h6>${UserLogged.fullname}</h6>
              <p>${UserLogged.email}</p>
            </div>
            
           
            <div class="col-7 txt-editprofile">
              <div class="form-outline mb-3">
                <label class="form-label" for="usernameprofile">Username</label>
                <input style="background-color: rgb(206, 200, 200);" type="text" id="usernameprofile" class="form-control"
                  placeholder="Tên đăng nhập" name="username" value="${UserLogged.username}" readonly/>
              </div>

              <div class="form-outline mb-3">
                <label class="form-label" for="fullnameprofile">Full name</label>
                <input style="background-color: rgb(206, 200, 200);" type="text" id="fullnameprofile" class="form-control"
                  placeholder="Tên" name="fullname" value="${UserLogged.fullname}"/>
              </div>

              <div class="form-outline mb-3">
                <div class="d-flex justify-content-between align-items-center">
                 <label class="form-label" for="emailprofile">Email address</label>
                  <i id="togglePassword" class="btn bi bi-arrow-repeat fs-4" onclick="togglePasswordVisibility()"></i>
                </div>
                      <input style="background-color: rgb(206, 200, 200);" type="email" id="emailprofile" class="form-control"
                  placeholder="Địa chỉ email" name="email" value="${UserLogged.email}"/>
              </div>
              
              
              <div id="newPasswordSection" style="display: none;">
              
              
                 <div class="form-outline mb-3">
                 <label class="form-label" for="passwordprofile">Old password</label>
                <input style="background-color: rgb(206, 200, 200);" type="password" id="passwordprofile"
                  class="form-control" placeholder="Mật khẩu" name="passwords" />
              </div>
              
              
              
                <div class="form-outline mb-3">
                  <label class="form-label" for="newpasswordprofile">New password</label>
                  <input style="background-color: rgb(206, 200, 200);" type="password" id="newpasswordprofile"
                    class="form-control" placeholder="Mật khẩu mới" name="NewPasswords"/>
                </div>
                <div class="form-outline mb-3">
                  <label class="form-label" for="confirmpasswordprofile">Confirm password</label>
                  <input style="background-color: rgb(206, 200, 200);" type="password" id="confirmpasswordprofile"
                    class="form-control" placeholder="Xác nhân mật khẩu"  name="ConfirmPasswords" />
                </div>
              </div>
            </div>
            
           
            
            
          </div>
        </div>
        <div class="modal-footer modal-footer-editprofile">
          <button type="button" class="close" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="saveprofile" formaction="account/edit-profile">Save profile</button>
       
        </div>
         </form>
        
      </div>
    </div>
  </div>

  <script>
    function togglePasswordVisibility() {
      var newPasswordSection = document.getElementById('newPasswordSection');
      var togglePasswordIcon = document.getElementById('togglePassword');

      if (newPasswordSection.style.display === 'none') {
        newPasswordSection.style.display = 'block';
        togglePasswordIcon.classList.remove('bi-arrow-repeat');
        togglePasswordIcon.classList.add('bi-arrow-repeat');
      } else {
        newPasswordSection.style.display = 'none';
        togglePasswordIcon.classList.remove('bi-arrow-repeat');
        togglePasswordIcon.classList.add('bi-arrow-repeat');
      }
    }
  </script>