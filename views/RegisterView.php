<style type="text/css">
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
  .center{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 400px;
    background: linear-gradient(120deg,#2980b9, #8e44ad);
    border-radius: 10px;
    box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
  }
  .center h1{
    text-align: center;
    padding: 20px 0;
    border-bottom: 1px solid silver;
    color: white;
  }
  .center form{
    padding: 0 40px;
    box-sizing: border-box;
  }
  form .txt_field{
    position: relative;
    border-bottom: 2px solid #adadad;
    margin: 30px 0;
  }
  .txt_field input{
    width: 100%;
    padding: 0 5px;
    height: 40px;
    font-size: 16px;
    border: none;
    background: none;
    outline: none;
  }
  .txt_field label{
    position: absolute;
    top: 50%;
    left: 5px;
    color: #adadad;
    transform: translateY(-50%);
    font-size: 16px;
    pointer-events: none;
    transition: .5s;
  }
  .txt_field span::before{
    content: '';
    position: absolute;
    top: 40px;
    left: 0;
    width: 0%;
    height: 2px;
    background: #2691d9;
    transition: .5s;
  }
  .txt_field input:focus ~ label,
  .txt_field input:valid ~ label{
    top: -5px;
    color: #2691d9;
  }
  .txt_field input:focus ~ span::before,
  .txt_field input:valid ~ span::before{
    width: 100%;
  }
  .pass{
    margin: -5px 0 20px 5px;
    color: #a6a6a6;
    cursor: pointer;
  }
  .pass:hover{
    text-decoration: underline;
  }
  input[type="submit"]{
    width: 100%;
    height: 50px;
    border: 1px solid;
    background: #2691d9;
    border-radius: 25px;
    font-size: 18px;
    color: #e9f4fb;
    font-weight: 700;
    cursor: pointer;
    outline: none;
  }
  input[type="submit"]:hover{
    border-color: #2691d9;
    transition: .5s;
  }
  .signup_link{
    margin: 30px 0;
    text-align: center;
    font-size: 16px;
    color: white;
  }
  .signup_link a{
    color: #2691d9;
    text-decoration: none;
  }
  .signup_link a:hover{
    text-decoration: underline;
  }
</style>
<div class="center">
  <h1>Đăng ký</h1>
  <form method="post" action="index.php?controller=account&action=registerPost">
    <div class="txt_field">
      <?php if(isset($_GET["notify"]) && $_GET['notify'] == 'error'): ?>
        <p style="color:red;">Đăng ký chưa thành công, bạn hãy kiểm tra lại thông tin!</p>
        <?php else: ?>
          <p> Nếu bạn chưa có tài khoản, hãy đăng ký ngay để nhận thông tin ưu đãi cùng những ưu đãi từ cửa hàng.</p>
        <?php endif; ?>
      </div>
      <div class="txt_field">
        <input type="text" placeholder="Họ tên" name="name" required>
        <span></span>
      </div>
      <div class="txt_field">
        <input type="text" placeholder="Email" name="email" required>
        <span></span>
      </div>
      <div class="txt_field">
        <input type="text" placeholder="Địa chỉ" name="address" required>
        <span></span>
      </div>
      <div class="txt_field">
        <input type="text" placeholder="Điện thoại" name="phone" required>
        <span></span>
      </div>
      <div class="txt_field">
        <input type="password" placeholder="Mật khẩu" name="password" required>
        <span></span>
      </div>
      <div class="pass">Forgot Password?</div>
      <input type="submit" value="Đăng ký">
      <div class="signup_link">
        Đã có tài khoản? <a href="index.php?controller=account&action=login" class="button">Đăng nhập</a>
      </div>
    </form>
  </div>