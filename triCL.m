function x = triCL(A,b)
	[nzval, colind, rowptr] = clFormat(A);
	x=b; n=rows(A); m=2; % m va fi o pozitie curenta in nzval
	x(1)=x(1)/nzval(1);
	for i=2:n
		c=rowptr(i+1)-rowptr(i)-1;
		% c reprezinta numarul elementelor nenule existente pe o linie,
		% in afara de cel de pe diagonala principala
		for j=1:(i-1)
			% deci daca c!=0 inseamna ca exista un A(i,j) pe care
			% trebuie sa-l scad din x(i)
			% acel element este nzval(m)
			if ((c!=0) && (colind(m)==j))
			x(i)=x(i)-nzval(m)*x(j);
			m++; c--;
			end
		end
		m++; % aici mai fac o data m++ ca sa sar peste elementul de pe 
		     % diagonala principala
		x(i)=x(i)/nzval(rowptr(i+1)-1);
		% nzval(roptr(i+1)-1) reprezinta elementele A(i,i)
	end
end
			
