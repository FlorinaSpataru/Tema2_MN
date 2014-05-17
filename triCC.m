function x = triCC(A,b)
	% asemanator cu triCL, am folosit variabilele comune in acelasi scop
	[nzval, rowind, colptr] = ccFormat(A);
	x=b; n=rows(A); m=1;
	for j=1:n
		m++;
		x(j)=x(j)/nzval(colptr(j));
		c=colptr(j+1)-colptr(j)-1;
		for i=(j+1):n
			if ((c!=0) && (rowind(m)==i))
			x(i)=x(i)-nzval(m)*x(j);
			m++; c--;
			end
		end
	end
end
	
