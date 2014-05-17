function [nzval, rowind, colptr] = ccFormat(A)
	k=1; p=1; q=1; aux=1; auxx=0;
	nzval = []; rowind = []; colptr = [];
	n=rows(A);
	for i=1:n
		for j=1:n
			if i!=auxx
				colptr(q)=aux;
				q++;
			end
			auxx=i;
			if A(j,i)!=0
				aux++;
				nzval(k)=A(j,i); k++;
				rowind(p)=j; p++;
			end
		end
	end
	colptr(q)=aux;
end
