      subroutine cspavol(Jn1,K,cvol)
! This routine contains the Volumetric part of Spatial Tagent Matrix  	  
      double precision Jn1,Cvol(6,6),Mvol(6,6),K

      call zeros(6,6,Mvol)
	  

	      Mvol(1,1)=1.0d0
	      Mvol(1,2)=2.0d0*Jn1-1.0d0
	      Mvol(1,3)=2.0d0*Jn1-1.0d0
	  
	      Mvol(2,2)=1.0d0
	      Mvol(2,1)=2.0d0*Jn1-1.0d0
	      Mvol(2,3)=2.0d0*Jn1-1.0d0
	  
	      Mvol(3,3)=1.0d0
	      Mvol(3,1)=2.0d0*Jn1-1.0d0
	      Mvol(3,2)=2.0d0*Jn1-1.0d0
	  
	      Mvol(4,4)=-Jn1+1.0d0
	      Mvol(5,5)=-Jn1+1.0d0
	      Mvol(6,6)=-Jn1+1.0d0

          Cvol=K*Mvol

      end subroutine
! end code	  