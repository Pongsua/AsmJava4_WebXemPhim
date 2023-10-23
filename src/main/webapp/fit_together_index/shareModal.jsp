<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Modal -->
		<div class="modal fade" id="btnModalShare" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content modal-content-shareVid">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">SEND VIDEO TO YOUR FRIEND</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					
					<form action="/asmJava4/account/share" method="post">
					<div class="modal-body modal-body-shareVid">
						<div class="mb-3">
							<label for="mail" class="form-label">Your friend's email?</label>
							<input style="background-color: rgb(206, 200, 200); " type="email" class="form-control" id="mail" name="mailRecipient">
						</div>						<div class="text-center">
							<p>Share on a different platform</p>
							<button type="button" class="btn btn-floating mx-1">
								<i class="bi bi-facebook fs-2 text-white"></i>
							</button>

							<button type="button" class="btn btn-floating mx-1">
								<i class="bi bi-google fs-2 text-white"></i>
							</button>

							<button type="button" class="btn btn-floating mx-1">
								<i class="bi bi-twitter fs-2 text-white"></i>
							</button>

							<button type="button" class="btn btn-floating mx-1">
								<i class="bi bi-messenger fs-2 text-white"></i>
							</button>
						</div>


					</div>
					<div class="modal-footer modal-footer-shareVid">
						<button type="button" class="close" data-bs-dismiss="modal">Close</button>
						<button type="submit" class="share" >Share</button>
					</div>
					</form>
				</div>
			</div>
		</div>
