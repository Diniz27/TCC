unit UValidaDados;

interface

uses SysUtils, Xml.XMLIntf, Xml.XMLDoc, Vcl.Dialogs, Data.DB;

  function isCNPJ(CNPJ: string): boolean;
  function isCPF(CPF: string): boolean;
  procedure VerificarCampoNulo(Campo: TField; const Mensagem: string);

implementation

function isCNPJ(CNPJ: string): boolean;
var
  i, sm, r, peso: integer;
  digito13, digito14: char;
begin
  if (Length(CNPJ) <> 14) or (CNPJ = StringOfChar(CNPJ[1], 14)) then
  begin
    Result := False;
    Exit;
  end;

  try
    sm := 0;
    peso := 2;

    // Cálculo do 13º dígito
    for i := 12 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      Inc(peso);
      if peso = 10 then
        peso := 2;
    end;

    r := sm mod 11;
    if (r < 2) then
      digito13 := '0'
    else
      digito13 := Chr(11 - r + Ord('0'));

    // Cálculo do 14º dígito
    sm := 0;
    peso := 2;

    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      Inc(peso);
      if peso = 10 then
        peso := 2;
    end;

    r := sm mod 11;
    if (r < 2) then
      digito14 := '0'
    else
      digito14 := Chr(11 - r + Ord('0'));

    // Verifica se os dígitos calculados são iguais aos dígitos fornecidos
    Result := (digito13 = CNPJ[13]) and (digito14 = CNPJ[14]);

  except
    Result := False;
  end;
end;

function isCPF(CPF: string): boolean;
var
  i, s, r, peso: integer;
  digito10, digito11: char;
begin
  if (Length(CPF) <> 11) or (CPF = StringOfChar(CPF[1], 11)) then
  begin
    Result := False;
    Exit;
  end;

  try
    s := 0;
    peso := 10;

    // Cálculo do 10º dígito
    for i := 1 to 9 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      Dec(peso);
    end;

    r := 11 - (s mod 11);
    if r >= 10 then
      digito10 := '0'
    else
      digito10 := Chr(r + Ord('0'));

    s := 0;
    peso := 11;

    // Cálculo do 11º dígito
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      Dec(peso);
    end;

    r := 11 - (s mod 11);
    if r >= 10 then
      digito11 := '0'
    else
      digito11 := Chr(r + Ord('0'));

    // Verifica se os dígitos calculados são iguais aos dígitos fornecidos
    Result := (digito10 = CPF[10]) and (digito11 = CPF[11]);

  except
    Result := False;
  end;
end;

procedure VerificarCampoNulo(Campo: TField; const Mensagem: string);
begin
  if Campo.IsNull then
  begin
    MessageDlg(Mensagem, mtConfirmation, [mbOk], 0);
    Abort;
  end;
end;



end.
