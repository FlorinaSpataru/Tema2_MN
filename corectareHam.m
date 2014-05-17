function cod = corectareHam(sir)
	n=columns(sir); p1=1; err=0;
	for i=1:n % se determina pana la ce bit de paritate ajung
		while p1<=i
			p1=p1*2;
		end
	end
	p1=p1/2;


	cod=sir; p2=1; 

	% urmeaza corectarea propriu-zisa
	% o parte din algoritm este asemanatoare cu cea de la formareHam
	while p2!=p1
		s=0; bit=p2;
		while bit<=n
			for i=1:p2
				if ((cod(bit)=="1") && (bit!=p2))
					s=s+1;
				end
				bit++;
				if bit==n break; end
			end

			if bit==n break; end

			for i=1:p2
				bit++;
				if bit==n break; end
			end
			if bit==n break; end
		end
		if s/2==floor(s/2) % se verifica daca bitul de paritate ce a fost calculat 
				   % este egal cu cel existent in sir
			if cod(p2)!="0"
				err=err+p2; % daca se gasesc diferente, se aduna la err bitul 
					    % de paritate gresit
			end
		else
			if cod(p2)!="1"
				err=err+p2;
			end
		end
		p2=p2*2;
	end
	if err!=0 % daca err!=0 inseamna ca exista un bit gresit pe positia cod(err)
		  % si se verifica paritatea lui; daca e "1" e schimbat in "0" si invers
		if cod(err)=="0"
			cod(err)="1";
		else
			cod(err)="0";
		end
	end
end

	
			

