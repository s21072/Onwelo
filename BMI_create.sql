-- tables
-- Table: BigMacIndex
CREATE TABLE BigMacIndex (
    Geografia_ID_Kraj integer NOT NULL,
    Czas_Data date NOT NULL,
    Local_Price double precision NOT NULL,
    Dollar_Price double precision NOT NULL,
    Dolar_PPP double precision NOT NULL,
    CONSTRAINT BigMacIndex_Geografia FOREIGN KEY (Geografia_ID_Kraj)
    REFERENCES Geografia (ID_Kraj),
    CONSTRAINT BigMacIndex_Czas FOREIGN KEY (Czas_Data)
    REFERENCES Czas (Data)
);

-- Table: Czas
CREATE TABLE Czas (
    Data date NOT NULL CONSTRAINT Czas_pk PRIMARY KEY,
    Kwartal integer NOT NULL,
    Rok_finansowy integer NOT NULL
);

-- Table: Geografia
CREATE TABLE Geografia (
    ID_Kraj integer NOT NULL CONSTRAINT Geografia_pk PRIMARY KEY,
    Kraj varchar(64) NOT NULL,
    Region varchar(6) NOT NULL,
    Start_Data date NOT NULL,
    End_Data date,
    CONSTRAINT Ref_Start_Date FOREIGN KEY (Start_Data)
    REFERENCES Czas (Data),
    CONSTRAINT Ref_End_Date FOREIGN KEY (End_Data)
    REFERENCES Czas (Data)
);

-- End of file.

