module musicSheet (
	rst_n, clk,
	key
);

input rst_n, clk;
output [4:0]key;

reg [7:0]len;
reg [3:0]note;

reg [4:0]buff;
wire [4:0]key;

always @ (posedge clk) 
begin
	case (note)
		'd1: buff = 'b10000;
		'd2: buff = 'b01000;
		'd3: buff = 'b00100;
		'd4: buff = 'b00010;
		'd5: buff = 'b00001;
		default: buff = 'b00000;
    endcase             
end

always @ (posedge clk) 
begin
	if (!rst_n) 
		len = 0;
	else 
	begin
		if (len >= 89)
			len = 0;
		 else
			len = len + 1;
		case (len)
			0: note = 2;
			1: note = 2;
			2: note = 0;
			3: note = 2;
			4: note = 2;
			5: note = 0;
			6: note = 2;
			7: note = 2;
			8: note = 2;
			9: note = 2;
			10: note = 0;
			11: note = 2;
			12: note = 2;
			13: note = 0;
			14: note = 2;
			15: note = 2;
			16: note = 0;
			17: note = 2;
			18: note = 2;
			19: note = 2;
			20: note = 2;
			21: note = 0;
			22: note = 1;
			23: note = 1;
			24: note = 0;
			25: note = 2;
			26: note = 2;
			27: note = 0;
			28: note = 2;
			29: note = 2;
			30: note = 0;
			31: note = 3;
			32: note = 3;
			33: note = 0;
			34: note = 4;
			35: note = 4;
			36: note = 0;
			37: note = 3;
			38: note = 3;
			39: note = 0;
			40: note = 2;
			41: note = 2;
			42: note = 2;
			43: note = 2;
			44: note = 0;
			45: note = 2;
			46: note = 2;
			47: note = 0;
			48: note = 2;
			49: note = 2;
			50: note = 0;
			51: note = 2;
			52: note = 2;
			53: note = 2;
			54: note = 2;
			55: note = 0;
			56: note = 2;
			57: note = 2;
			58: note = 0;
			59: note = 2;
			60: note = 2;
			61: note = 0;
			62: note = 2;
			63: note = 2;
			64: note = 2;
			65: note = 2;
			66: note = 0;
			67: note = 2;
			68: note = 2;
			69: note = 0;
			70: note = 3;
			71: note = 3;
			72: note = 0;
			73: note = 4;
			74: note = 4;
			75: note = 0;
			76: note = 3;
			77: note = 3;
			78: note = 0;
			79: note = 4;
			80: note = 4;
			81: note = 0;
			82: note = 5;
			83: note = 5;
			84: note = 0;
			85: note = 5;
			86: note = 5;
			87: note = 5;
			88: note = 5;
			default: note = 0;
		endcase   
	end
end

assign key = buff;

endmodule
	