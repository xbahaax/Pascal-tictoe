Program tic_tac;
Uses Wincrt;
Var
  p: Array[0..8] Of Char;
  o: Array[0..8] Of Boolean;
  player,position,winner,i,t : Integer;
Begin
  Repeat
		t := 0;
    winner := 0;
    player := 1;
    p[0] := ' ';
    o[0] := False;
    p[1] := ' ';
    o[1] := False;
    p[2] := ' ';
    o[2] := False;
    p[3] := ' ';
    o[3] := False;
    p[4] := ' ';
    o[4] := False;
    p[5] := ' ';
    o[5] := False;
    p[6] := ' ';
    o[6] := False;
    p[7] := ' ';
    o[7] := False;
    p[8] := ' ';
    o[8] := False;
    Writeln('hi tester !!!! this is a simple tic toe game made via ');
    Writeln('the most shitty coding langage on earth "pascal');
    Writeln('the game is simple , u should enter the number of the case u want to play ,');
    Writeln('starting by player 1 with X then player 2 with Y');
    Writeln('the grid is :');
    Writeln('1||2||3');
    Writeln('-------');
    Writeln('4||5||6');
    Writeln('-------');
    Writeln('7||8||9');
    Writeln('Enjoy !!!!! ');
    Writeln('press enter');
    Readln;
    Repeat
      Clrscr;
      Writeln(p[0],' || ',p[1],' || ',p[2]);
      Writeln('------------');
      Writeln(p[3],' || ',p[4],' || ',p[5]);
      Writeln('------------');
      Writeln(p[6],' || ',p[7],' || ',p[8]);
      While player = 1 Do
        Begin
          Write('Enter a position to play : ');
          Read(position);
          If p[position -1] = ' ' Then
            Begin
              p[position - 1] := 'X';
              o[position - 1] := True;
              player := 2;
							t := t+1 ;
            End
          Else
            Writeln('case already chosen , choose an empty one ');
        End;
      Clrscr;
      Writeln(p[0],' || ',p[1],' || ',p[2]);
      Writeln('------------');
      Writeln(p[3],' || ',p[4],' || ',p[5]);
      Writeln('------------');
      Writeln(p[6],' || ',p[7],' || ',p[8]);
			If (p[0] = p[1] ) And (p[1]= p[2]) And (p[1]<> ' ') Then
        Begin
          If p[0] = 'X' Then winner := 1
          Else winner := 2;
					player := 3;
        End;
      If (p[3] = p[4] ) And (p[4]= p[5]) And (p[4]<> ' ') Then
        Begin
          If p[3] = 'X' Then winner := 1
          Else winner := 2;
					player := 3;
        End;
      If (p[6] = p[7] ) And (p[7]= p[8]) And (p[7]<> ' ')Then
        Begin
          If p[6] = 'X' Then winner := 1
          Else winner := 2;
					player := 3;
        End;
      If (p[0] = p[3] ) And (p[3]= p[6])And (p[3]<> ' ') Then
        Begin
          If p[0] = 'X' Then winner := 1
          Else winner := 2;
					player := 3;
        End;
      If (p[1] = p[4] ) And (p[4]= p[7])And (p[4]<> ' ') Then
        Begin
          If p[1] = 'X' Then winner := 1
          Else winner := 2;
					player := 3;
        End;
      If (p[2] = p[5] ) And (p[5]= p[8])And (p[5]<> ' ') Then
        Begin
          If p[2] = 'X' Then winner := 1
          Else winner := 2;
					player := 3;
        End;
      If (p[0] = p[4] ) And (p[4]= p[8]) And (p[4]<> ' ') Then
        Begin
          If p[0] = 'X' Then winner := 1
          Else winner := 2;
					player := 3;
        End;
      If (p[2] = p[4] ) And (p[4]= p[6]) And (p[4]<> ' ') Then
        Begin
          If p[2] = 'X' Then winner := 1
          Else winner := 2;
					player := 3;
        End;
			if (t = 5 ) and (winner = 0)Then
		Begin
		player := 3;
		winner := 3;
		end;
      While player = 2 Do
        Begin
          Write('Enter a position to play : ');
          Read(position);
          If p[position-1]= ' ' Then
            Begin
              p[position - 1 ] := 'O';
              o[position - 1] := True;
              player := 1;
            End
          Else Writeln('case already chosen choose another one');
        End;
      Clrscr;
      Writeln(p[0],' || ',p[1],' || ',p[2]);
      Writeln('------------');
      Writeln(p[3],' || ',p[4],' || ',p[5]);
      Writeln('------------');
      Writeln(p[6],' || ',p[7],' || ',p[8]);
      If (p[0] = p[1] ) And (p[1]= p[2]) And (p[1]<> ' ') Then
        Begin
          If p[0] = 'X' Then winner := 1
          Else winner := 2;
        End;
      If (p[3] = p[4] ) And (p[4]= p[5]) And (p[4]<> ' ') Then
        Begin
          If p[3] = 'X' Then winner := 1
          Else winner := 2;
        End;
      If (p[6] = p[7] ) And (p[7]= p[8]) And (p[7]<> ' ')Then
        Begin
          If p[6] = 'X' Then winner := 1
          Else winner := 2;
        End;
      If (p[0] = p[3] ) And (p[3]= p[6])And (p[3]<> ' ') Then
        Begin
          If p[0] = 'X' Then winner := 1
          Else winner := 2;
        End;
      If (p[1] = p[4] ) And (p[4]= p[7])And (p[4]<> ' ') Then
        Begin
          If p[1] = 'X' Then winner := 1
          Else winner := 2;
        End;
      If (p[2] = p[5] ) And (p[5]= p[8])And (p[5]<> ' ') Then
        Begin
          If p[2] = 'X' Then winner := 1
          Else winner := 2;
        End;
      If (p[0] = p[4] ) And (p[4]= p[8]) And (p[4]<> ' ') Then
        Begin
          If p[0] = 'X' Then winner := 1
          Else winner := 2;
        End;
      If (p[2] = p[4] ) And (p[4]= p[6]) And (p[4]<> ' ') Then
        Begin
          If p[2] = 'X' Then winner := 1
          Else winner := 2;
        End;
    Until ((winner = 1) Or (winner = 2)Or (winner = 3)) ;
    If winner <> 3 Then Writeln('winner is : ', winner,'press esc to exit')
    Else Writeln('tie press esc to exit ');
  Until Readkey = Chr(27);
	WriteLn('Credits to Bahaa , aka : li lazm yro7 y9ra analyse w raho ydir f had t7rach');
End.