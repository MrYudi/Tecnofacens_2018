function IsPalindome(const a_text: string): boolean;
var
  i, j       :longint;
  s1, s2, s3 :string;
begin
  s1 := UTF8LowerCase( a_text );
  j := length( s1 );
  i := 1;
  s2 := '';
  s3 := '';
  while ( i <= j ) do
    begin
      if s1[i] < #$C0 then  // ASCII
        begin
          if (s1[i] >= #$30) and (s1[i] < #$7B)then
            begin
              if (s1[i] > #$60) or (s1[i] < #$3A) then
                begin
                  s2 := s1[i] + s2;
                  s3 := s3 + s1[i];
                end;
              end;
            inc( i );
          end
        else
        begin
          begin
            if s1[i] < #$E0 then  // two byte
              begin
                if ((s1[i] > #$C2) and ( not
                  // Armenian punctuation
                  ((s1[i] = #$D5) and ((s1[i+1] >= #$99) and (s1[i+1] < #$A0)))
                  )) then
                  begin
                    s2 := s1[i]+ s1[i+1] + s2;
                    s3 := s3 + s1[i] + s1[i+1];
                  end;
                inc( i ,2);
              end
            else
              begin
                if s1[i] < #$F0 then  // three byte
                  begin
                    if not (
                      // General punctuation
                      (s1[i] = #$E2) and ((s1[i+1]= #$80)
                      or ((s1[i+1]= #$81) and (s1[i+2]< #$B0)))
                      ) then
                      begin
                        s2 := s1[i]+ s1[i+1] + s1[i+2]+ s2;
                        s3 := s3 + s1[i] + s1[i+1] + s1[i+2];
                      end;
                    inc( i ,3);
                  end
                else
                  begin
                    s2 := s1[i]+ s1[i+1] + s1[i+2]+ s1[i+3] + s2;
                    s3 := s3 + s1[i] + s1[i+1] + s1[i+2] + s1[i+3];
                    inc( i ,4);
                  end
              end;
          end;
        end;
    end;
  if s2 <> '' then result := s2=s3 else result := false;
end;