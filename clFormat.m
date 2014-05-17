function [nzval, colind, rowptr] = clFormat(A)
	k=1; p=1; q=1; aux=1; auxx=0;
	nzval = []; colind = []; rowptr = [];
	n=rows(A);
	for i=1:n
		for j=1:n
			if i!=auxx
				rowptr(q)=aux;
				q++;
			end
			auxx=i;
			if A(i,j)!=0
				aux++;
				nzval(k)=A(i,j); k++;
				colind(p)=j; p++;
			end
		end
	end
	rowptr(q)=aux;
end
