module CLA_256(A,B,c0,S,px,gx);
     input [256:1] A;
	 input [256:1] B;
	input c0;
	output gx,px;
	output [256:1] S;

	wire c4,c8,c12,c16,c20,c24,c28;
    wire c32,c36,c40,c44,c48,c52,c56,c60,c64;
    wire c68,c72,c76,c80,c84,c88,c92,c96,c100;
    wire c104,c108,c112,c116,c120,c124,c128,c132,c136,c140;
    wire c144,c148,c152,c156,c160,c164,c168,c172,c176,c180;
    wire c184,c188,c192,c196,c190,c204,c208,c212,c216,c220;
    wire c224,c228,c232,c236,c240,c244,c248,c252;

	wire Pm1,Gm1,Pm2,Gm2,Pm3,Gm3,Pm4,Gm4,Pm5,Gm5,Pm6,Gm6,Pm7,Gm7,Pm8,Gm8,pm9,gm9,pm10,gm10;
    wire pm11,gm11,pm12,gm12,pm13,gm13,pm14,gm14,pm15,gm15,pm16,gm16,pm17,gm17,pm18,gm18,pm19,gm19,pm20,gm20;
    wire pm21,gm21,pm22,gm22,pm23,gm23,pm24,gm24,pm25,gm25,pm26,gm26,pm27,gm27,pm28,gm28,pm29,gm29,pm30,gm30;
    wire pm31,gm31,pm32,gm32,pm33,gm33,pm34,gm34,pm35,gm35,pm36,gm36,pm37,gm37,pm38,gm38,pm39,gm39,pm40,gm40;
    wire pm41,gm41,pm42,gm42,pm43,gm43,pm44,gm44,pm45,gm45,pm46,gm46,pm47,gm47,pm48,gm48,pm49,gm49,pm50,gm50;
    wire pm51,gm51,pm52,gm52,pm53,gm53,pm54,gm54,pm55,gm55,pm56,gm56,pm57,gm57,pm58,gm58,pm59,gm59,pm60,gm60;
    wire pm61,gm61,pm62,gm62,pm63,gm63,pm64,gm64;

	adder_4 adder1(.x(A[4:1]),.y(B[4:1]),.c0(c0),.c4(),.F(S[4:1]),.Gm(Gm1),.Pm(Pm1));
	adder_4 adder2(.x(A[8:5]),.y(B[8:5]),.c0(c4),.c4(),.F(S[8:5]),.Gm(Gm2),.Pm(Pm2));
    adder_4 adder3(.x(A[12:9]),.y(B[12:9]),.c0(c8),.c4(),.F(S[12:9]),.Gm(Gm3),.Pm(Pm3));
    adder_4 adder4(.x(A[16:13]),.y(B[16:13]),.c0(c12),.c4(),.F(S[16:13]),.Gm(Gm4),.Pm(Pm4));
    adder_4 adder5(.x(A[20:17]),.y(B[20:17]),.c0(c16),.c4(),.F(S[20:17]),.Gm(Gm5),.Pm(Pm5));
	adder_4 adder6(.x(A[24:21]),.y(B[24:21]),.c0(c20),.c4(),.F(S[24:21]),.Gm(Gm6),.Pm(Pm6));
    adder_4 adder7(.x(A[28:25]),.y(B[28:25]),.c0(c24),.c4(),.F(S[28:25]),.Gm(Gm7),.Pm(Pm7));
    adder_4 adder8(.x(A[32:29]),.y(B[32:29]),.c0(c28),.c4(),.F(S[32:29]),.Gm(Gm8),.Pm(Pm8));
	adder_4 adder9(.x(A[36:33]),.y(B[36:33]),.c0(c32),.c4(),.F(S[36:33]),.Gm(gm9),.Pm(pm9));
	adder_4 adder10(.x(A[40:37]),.y(B[40:37]),.c0(c36),.c4(),.F(S[40:37]),.Gm(gm10),.Pm(pm10));

    adder_4 adder11(.x(A[44:41]),.y(B[44:41]),.c0(c40),.c4(),.F(S[44:41]),.Gm(gm11),.Pm(pm11));
    adder_4 adder12(.x(A[48:45]),.y(B[48:45]),.c0(c44),.c4(),.F(S[48:45]),.Gm(gm12),.Pm(pm12));
    adder_4 adder13(.x(A[52:49]),.y(B[52:49]),.c0(c48),.c4(),.F(S[52:49]),.Gm(gm13),.Pm(pm13));
	adder_4 adder14(.x(A[56:53]),.y(B[56:53]),.c0(c52),.c4(),.F(S[56:53]),.Gm(gm14),.Pm(pm14));
    adder_4 adder15(.x(A[60:57]),.y(B[60:57]),.c0(c56),.c4(),.F(S[60:57]),.Gm(gm15),.Pm(pm15));
    adder_4 adder16(.x(A[64:61]),.y(B[64:61]),.c0(c60),.c4(),.F(S[64:61]),.Gm(gm16),.Pm(pm16));
    adder_4 adder17(.x(A[68:65]),.y(B[68:65]),.c0(c64),.c4(),.F(S[68:65]),.Gm(gm17),.Pm(pm17));
	adder_4 adder18(.x(A[72:69]),.y(B[72:69]),.c0(c68),.c4(),.F(S[72:69]),.Gm(gm18),.Pm(pm18));
    adder_4 adder19(.x(A[76:73]),.y(B[76:73]),.c0(c72),.c4(),.F(S[76:73]),.Gm(gm19),.Pm(pm19));
    adder_4 adder20(.x(A[80:77]),.y(B[80:77]),.c0(c76),.c4(),.F(S[80:77]),.Gm(gm20),.Pm(pm20));

    adder_4 adder21(.x(A[84:81]),.y(B[84:81]),.c0(c80),.c4(),.F(S[84:81]),.Gm(gm21),.Pm(pm21));
    adder_4 adder22(.x(A[88:85]),.y(B[88:85]),.c0(c84),.c4(),.F(S[88:85]),.Gm(gm22),.Pm(pm22));
    adder_4 adder23(.x(A[92:89]),.y(B[92:89]),.c0(c88),.c4(),.F(S[92:89]),.Gm(gm23),.Pm(pm23));
	adder_4 adder24(.x(A[96:93]),.y(B[96:93]),.c0(c92),.c4(),.F(S[96:93]),.Gm(gm24),.Pm(pm24));
    adder_4 adder25(.x(A[100:97]),.y(B[100:97]),.c0(c96),.c4(),.F(S[100:97]),.Gm(gm25),.Pm(pm25));
    adder_4 adder26(.x(A[104:101]),.y(B[104:101]),.c0(c100),.c4(),.F(S[104:101]),.Gm(gm26),.Pm(pm26));
    adder_4 adder27(.x(A[108:105]),.y(B[108:105]),.c0(c104),.c4(),.F(S[108:105]),.Gm(gm27),.Pm(pm27));
	adder_4 adder28(.x(A[112:109]),.y(B[112:109]),.c0(c108),.c4(),.F(S[112:109]),.Gm(gm28),.Pm(pm28));
    adder_4 adder29(.x(A[116:113]),.y(B[116:113]),.c0(c112),.c4(),.F(S[116:113]),.Gm(gm29),.Pm(pm29));
    adder_4 adder30(.x(A[120:117]),.y(B[120:117]),.c0(c116),.c4(),.F(S[120:117]),.Gm(gm30),.Pm(pm30));

    adder_4 adder31(.x(A[124:121]),.y(B[124:121]),.c0(c120),.c4(),.F(S[124:121]),.Gm(gm31),.Pm(pm31));
    adder_4 adder32(.x(A[128:125]),.y(B[128:125]),.c0(c124),.c4(),.F(S[128:125]),.Gm(gm32),.Pm(pm32));
    adder_4 adder33(.x(A[132:129]),.y(B[132:129]),.c0(c128),.c4(),.F(S[132:129]),.Gm(gm33),.Pm(pm33));
	adder_4 adder34(.x(A[136:133]),.y(B[136:133]),.c0(c132),.c4(),.F(S[136:133]),.Gm(gm34),.Pm(pm34));
    adder_4 adder35(.x(A[140:137]),.y(B[140:137]),.c0(c136),.c4(),.F(S[140:137]),.Gm(gm35),.Pm(pm35));
    adder_4 adder36(.x(A[144:141]),.y(B[144:141]),.c0(c140),.c4(),.F(S[144:141]),.Gm(gm36),.Pm(pm36));
    adder_4 adder37(.x(A[148:145]),.y(B[148:145]),.c0(c144),.c4(),.F(S[148:145]),.Gm(gm37),.Pm(pm37));
	adder_4 adder38(.x(A[152:149]),.y(B[152:149]),.c0(c148),.c4(),.F(S[152:149]),.Gm(gm38),.Pm(pm38));
    adder_4 adder39(.x(A[156:153]),.y(B[156:153]),.c0(c152),.c4(),.F(S[156:153]),.Gm(gm39),.Pm(pm39));
    adder_4 adder40(.x(A[160:157]),.y(B[160:157]),.c0(c156),.c4(),.F(S[160:157]),.Gm(gm40),.Pm(pm40));

    adder_4 adder41(.x(A[164:161]),.y(B[164:161]),.c0(c160),.c4(),.F(S[164:161]),.Gm(gm41),.Pm(pm41));
    adder_4 adder42(.x(A[168:165]),.y(B[168:165]),.c0(c164),.c4(),.F(S[168:165]),.Gm(gm42),.Pm(pm42));
    adder_4 adder43(.x(A[172:169]),.y(B[172:169]),.c0(c168),.c4(),.F(S[172:169]),.Gm(gm43),.Pm(pm43));
	adder_4 adder44(.x(A[176:173]),.y(B[176:173]),.c0(c172),.c4(),.F(S[176:173]),.Gm(gm44),.Pm(pm44));
    adder_4 adder45(.x(A[180:177]),.y(B[180:177]),.c0(c176),.c4(),.F(S[180:177]),.Gm(gm45),.Pm(pm45));
    adder_4 adder46(.x(A[184:181]),.y(B[184:181]),.c0(c180),.c4(),.F(S[184:181]),.Gm(gm46),.Pm(pm46));
    adder_4 adder47(.x(A[188:185]),.y(B[188:185]),.c0(c184),.c4(),.F(S[188:185]),.Gm(gm47),.Pm(pm47));
	adder_4 adder48(.x(A[192:189]),.y(B[192:189]),.c0(c188),.c4(),.F(S[192:189]),.Gm(gm48),.Pm(pm48));
    adder_4 adder49(.x(A[196:193]),.y(B[196:193]),.c0(c192),.c4(),.F(S[196:193]),.Gm(gm49),.Pm(pm49));
    adder_4 adder50(.x(A[200:197]),.y(B[200:197]),.c0(c196),.c4(),.F(S[200:197]),.Gm(gm50),.Pm(pm50));
    
    adder_4 adder51(.x(A[204:201]),.y(B[204:201]),.c0(c200),.c4(),.F(S[204:201]),.Gm(gm51),.Pm(pm51));
    adder_4 adder52(.x(A[208:205]),.y(B[208:205]),.c0(c204),.c4(),.F(S[208:205]),.Gm(gm52),.Pm(pm52));
    adder_4 adder53(.x(A[212:209]),.y(B[212:209]),.c0(c208),.c4(),.F(S[212:209]),.Gm(gm53),.Pm(pm53));
	adder_4 adder54(.x(A[216:213]),.y(B[216:213]),.c0(c212),.c4(),.F(S[216:213]),.Gm(gm54),.Pm(pm54));
    adder_4 adder55(.x(A[220:217]),.y(B[220:217]),.c0(c216),.c4(),.F(S[220:217]),.Gm(gm55),.Pm(pm55));
    adder_4 adder56(.x(A[224:221]),.y(B[224:221]),.c0(c220),.c4(),.F(S[224:221]),.Gm(gm56),.Pm(pm56));
    adder_4 adder57(.x(A[228:225]),.y(B[228:225]),.c0(c224),.c4(),.F(S[228:225]),.Gm(gm57),.Pm(pm57));
	adder_4 adder58(.x(A[232:229]),.y(B[232:229]),.c0(c228),.c4(),.F(S[232:229]),.Gm(gm58),.Pm(pm58));
    adder_4 adder59(.x(A[236:233]),.y(B[236:233]),.c0(c232),.c4(),.F(S[236:233]),.Gm(gm59),.Pm(pm59));
    adder_4 adder60(.x(A[240:237]),.y(B[240:237]),.c0(c236),.c4(),.F(S[240:237]),.Gm(gm60),.Pm(pm60));

    adder_4 adder61(.x(A[244:241]),.y(B[244:241]),.c0(c240),.c4(),.F(S[244:241]),.Gm(gm61),.Pm(pm61));
    adder_4 adder62(.x(A[248:245]),.y(B[248:245]),.c0(c244),.c4(),.F(S[248:245]),.Gm(gm62),.Pm(pm62));
    adder_4 adder63(.x(A[252:249]),.y(B[252:249]),.c0(c248),.c4(),.F(S[252:249]),.Gm(gm63),.Pm(pm63));
	adder_4 adder64(.x(A[256:253]),.y(B[256:253]),.c0(c252),.c4(),.F(S[256:253]),.Gm(gm64),.Pm(pm64));



	assign   
    c4 = Gm1 ^ (Pm1 & c0),
	c8 = Gm2 ^ (Pm2 & Gm1) ^ (Pm2 & Pm1 & c0),
    c12 = Gm3 ^ (Pm3 & Gm2) ^ (Pm3 & Pm2 & Gm1) ^ (Pm3 & Pm2 & Pm1 & c0),
    c16 = Gm4 ^ (Pm4 & Gm3) ^ (Pm4 & Pm3 & Gm2) ^ (Pm4 & Pm3 & Pm2 & Gm1) ^ (Pm4 & Pm3 & Pm2 & Pm1 &c0),
    c20 = Gm5 ^ (Pm5 & Gm4)^(Pm5 & Pm4 & Gm3)^(Pm5 & Pm4 & Pm3 & Gm2)^(Pm5 & Pm4 & Pm3 & Pm2 & Gm1)^(Pm5 & Pm4 & Pm3 & Pm2 & Pm1 & c0),
    c24 = Gm6 ^ (Pm6 & Gm5)^(Pm6 & Pm5 & Gm4)^(Pm6 & Pm5 & Pm4 & Gm3)^(Pm6 & Pm5 & Pm4 & Pm3 & Gm2)^(Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Gm1)^(Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Pm1 & c0),
    c28 = Gm7^(Pm7 & Gm6)^(Pm7 & Pm6 & Gm5)^(Pm7 & Pm6 & Pm5 & Gm4)^(Pm7 & Pm6 & Pm5 & Pm4 & Gm3)^(Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Gm2)^(Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Gm1)^(Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Pm1 & c0),
    c32 = Gm8^(Pm8&Gm7)^(Pm8&Pm7&Gm6)^(Pm8&Pm7&Pm6&Gm5)^(Pm8&Pm7&Pm6&Pm5&Gm4)^(Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c36 = gm9^(pm9&Gm8)^(pm9&Pm8&Gm7)^(pm9&Pm8&Pm7&Gm6)^(pm9&Pm8&Pm7&Pm6&Gm5)^(pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c40 = gm10^(pm10&gm9)^(pm10&pm9&Gm8)^(pm10&pm9&Pm8&Gm7)^(pm10&pm9&Pm8&Pm7&Gm6)^(pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c44 = gm11^(pm11&gm10)^(pm11&pm10&gm9)^(pm11&pm10&pm9&Gm8)^(pm11&pm10&pm9&Pm8&Gm7)^(pm11&pm10&pm9&Pm8&Pm7&Gm6)^(pm11&pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c48 = gm12^(pm12&gm11)^(pm12&pm11&gm10)^(pm12&pm11&pm10&gm9)^(pm12&pm11&pm10&pm9&Gm8)^(pm12&pm11&pm10&pm9&Pm8&Gm7)^(pm12&pm11&pm10&pm9&Pm8&Pm7&Gm6)^(pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0).
    c52 = gm13^(pm13&gm12)^(pm13&pm12&gm11)^(pm13&pm12&pm11&gm10)^(pm13&pm12&pm11&pm10&gm9)^(pm13&pm12&pm11&pm10&pm9&Gm8)^(pm13&pm12&pm11&pm10&pm9&Pm8&Gm7)^(pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Gm6)^(pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c56 = gm14^(pm14&gm13)^(pm14&pm13&gm12)^(pm14&pm13&pm12&gm11)^(pm14&pm13&pm12&pm11&gm10)^(pm14&pm13&pm12&pm11&pm10&gm9)^(pm14&pm13&pm12&pm11&pm10&pm9&Gm8)^(pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Gm7)^(pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Gm6)^(pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c60 = gm15^(pm15&gm14)^(pm15&pm14&gm13)^(pm15&pm14&pm13&gm12)^(pm15&pm14&pm13&pm12&gm11)^(pm15&pm14&pm13&pm12&pm11&gm10)^(pm15&pm14&pm13&pm12&pm11&pm10&gm9)^(pm15&pm14&pm13&pm12&pm11&pm10&pm9&Gm8)^(pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Gm7)^(pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Gm6)^(pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c64 = gm16^(pm16&gm15)^(pm16&pm15&gm14)^(pm16&pm15&pm14&gm13)^(pm16&pm15&pm14&pm13&gm12)^(pm16&pm15&pm14&pm13&pm12&gm11)^(pm16&pm15&pm14&pm13&pm12&pm11&gm10)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&gm9)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Gm8)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Gm7)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Gm6)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c68 = gm17^(pm17&gm16)^(pm17&pm16&gm15)^(pm17&pm16&pm15&gm14)^(pm17&pm16&pm15&pm14&gm13)^(pm17&pm16&pm15&pm14&pm13&gm12)^(pm17&pm16&pm15&pm14&pm13&pm12&gm11)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&gm10)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&gm9)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Gm8)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Gm7)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Gm6)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c72 = gm18^(pm18&gm17)^(pm18&pm17&gm16)^(pm18&pm17&pm16&gm15)^(pm18&pm17&pm16&pm15&gm14)^(pm18&pm17&pm16&pm15&pm14&gm13)^(pm18&pm17&pm16&pm15&pm14&pm13&gm12)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&gm11)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&gm10)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&gm9)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Gm8)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Gm7)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Gm6)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm18&pm17&pm16&pm15&pm14&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Pm1&c0),
    c76 = gm19^(pm19&gm18)^(pm19&pm18&gm17)^(pm19&pm18&pm17&gm16)^(pm19&pm18&pm17&pm16&gm15)^(pm19&pm18&pm17&pm16&pm15&gm14)^(pm19&pm18&pm17&pm16&pm15&pm14&gm13)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&gm12)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&gm11)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&gm10)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&gm9)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&pm9&Gm8)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&pm9&Pm8&Gm7)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Gm6)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Gm5)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Gm4)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Gm3)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Gm2)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)^(pm19&pm18&pm17&pm16&pm15&pm14&pm13&pm13&pm12&pm11&pm10&pm9&Pm8&Pm7&Pm6&Pm5&Pm4&Pm3&Pm2&Gm1)
    assign  px = Pm1 & Pm2 & Pm3 & Pm4 & Pm5 & Pm6 & Pm7 & Pm8,
	        gx = Gm8 ^ (Pm8 & Gm7) ^ (Pm8 & Pm7 & Gm6) ^ (Pm8 & Pm7 & Pm6 & Gm5)^ (Pm8 & Pm7 & Pm6 & Pm5 & Gm4)^ (Pm8 & Pm7 & Pm6 & Pm5 & Pm4 & Gm3)^ (Pm8 & Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Gm2)^ (Pm8 & Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Gm1);
endmodule 