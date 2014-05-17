function cod = formareHam(sir)
	n=columns(sir);
	p1=1; auxx=1; c=0; 
	% in while-ul urmator formez cuvantul cod care va avea pe bitii de paritate "?"
	while auxx!=n
		cod(p1)="?"; c++; % aici imi pune "?" pe pozitiile 1,2,4...etc, adica in p1
		for i=(p1+1):(p1*2-1)
			cod(i)=sir(auxx);  % daca nu ma aflu pe un bit de paritate, imi copiaza
			auxx++; c++;	   % pur si simplu bitul din sir
			if auxx==n	   % auxx reprezinta pozitia in sir
				break;
			end
		end
		p1=p1*2; % aici se trece la urmatorul bit de paritate
	end
	cod(c+1)=sir(n); % aici se copiaza si ultimul bit dinn sir in cod
	% in while-ul urmator se inlocuieste "?" cu paritatea corecta
	n=columns(cod);
	p2=1; 
	while p2!=p1
		s=0; bit=p2; % s va fi suma bitilor pe care ii verifica bitii de paritate
		while bit<=n
			for i=1:p2 % aici adauga la suma un numar de p2 biti
				if cod(bit)=="1"
					s=s+1;
				end
				bit++;
				if bit==n break; end
			end

			if bit==n break; end

			for i=1:p2 % aici sare peste un numar de p2 biti
				bit++;
				if bit==n break; end
			end
			if bit==n break; end
		end
		if s/2==floor(s/2) % aici se verifica paritatea lui s
			cod(p2)="0";
		else
			cod(p2)="1";
		end
		p2=p2*2; % se trece la urmatorul bit de paritate
	end
end

	
			

