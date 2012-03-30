var randString;
var flag2=0;
var flag1=0;
var flag3=0;
var flag4=0;
var flag5=0;
var flag6=0;
var u=0;
var ran=0;
var ran1=0;
var ran2=0;
var ran3=0;
var ran4=0;
var ran5=0;
var bol;
var score=0;
var ushowA;
var x;
var y;
var count=0;
var level;
var scores;var Hint;


function test()//function to test the string
{
//ushowA.toUpperCase();
if(ushowA.toUpperCase()==randString)
{bol=1;//true go to correct state

score=score+1;
    scores=""+score;
      //console.log("CORECT LEVE")
//console.log(ushowA.toUpperCase())
    //console.log(randString)

}
else if(ushowA.toUpperCase()!=randString)
{bol=0;//false go to wrong state
    score=score-1;
    scores=""+score;
    //console.log("WRONG LEVE")
//console.log(ushowA.toUpperCase())
    //console.log(randString)
}

}




var charArray = new Array(6);
function charFromString()
{var answer = new Array(1);
    var hint = new Array(150);

    //Modified Date - 20/6/2011 Modified time - 10 am Modified by - Vivek.P

    //Sadan's Words

    var answer = new Array(150);
    var hint = new Array(150);

    //Modified Date - 20/6/2011 Modified time - 10 am Modified by - Vivek.P

    //Sadan's Words

    answer[0] = "ADDICT";        hint[0] = "To become psychologically dependent on a substance";
      answer[1] = "ABRUPT";        hint[1] = "Sudden or unexpected";



                                      hint[2] = " Away from one's country";
      answer[2] = "ABROAD";         hint[3] = "Say yes to an offer or invitation";
      answer[3] = "ACCEPT";          hint[4] = "Means of approaching or entering";
      answer[4] = "ACCESS";          hint[5] = "Existing in fact";
      answer[5] = "ACTUAL";         hint[6] = " Be next to";
      answer[6] = "ADJOIN";          hint[7] = "Lacking aim,direction or stability";
      answer[7] = "ADRIFT";           hint[8] = "State as a fact";
      answer[8] = "AFFIRM";
      answer[9] = "AFFORD";           hint[9] = "Have enough money or time";
      answer[10] = "AGENCY";          hint[10] = "Business or office of an agent";
      answer[11] = "ADJUST";          hint[11] = "Adapt to new conditions";
      answer[12] = "ADVICE";          hint[12] = "Piece of information";
      answer[13] = "ANOINT";          hint[13] = "To consecrate or make sacred in a ceremony";
      answer[14] = "ANTHEM";          hint[14] = "Piece of music to be sung in a religious service";
      answer[15] = "ANSWER";          hint[15] = "Thing said or written to deal with a question";
      answer[16] = "APPEAL";          hint[16] = "Make an earnest or formal request";
      answer[17] = "ARCADE";          hint[17] = "Covered walk between shops";
      answer[18] = "ARREST";          hint[18] = "Seize by authority of law";
      answer[19] = "ASHRAM";          hint[19] = "Retreat for religious meditation";
      answer[20] = "BABOON";          hint[20] = "Kind of large monkey";
      answer[21] = "BAKERY";          hint[21] = "Place where bread is baked for sale";
      answer[22] = "BAFFLE";          hint[22] = "Frustrate";
      answer[23] = "BAMBOO";          hint[23] = "Giant tropical grass with hollow stems";
      answer[24] = "BANDIT";          hint[24] = "Member of a band of robbers";
      answer[25] = "BANGLE";          hint[25] = "Bracelet of rigid material";
      answer[26] = "BALLET";          hint[26] = "A classical dance form demanding grace or precision";
      answer[27] = "BONSAI";          hint[27] = "A dwarf tree or shrub grown in a pot";
      answer[28] = "BORDER";          hint[28] = "Edge or boundary";
      answer[29] = "BOXING";          hint[29] = "The act, technique or profession of fighting";
      answer[30] = "BREEZE";          hint[30] = "Light wind";
      answer[31] = "BRIDGE";          hint[31] = "Structure providing a way across something";
      answer[32] = "CAMPUS";          hint[32] = "Grounds of a university or a college";
      answer[33] = "CANOPY";          hint[33] = "Hung or held up over a throne, bed, person etc.";
      answer[34] = "CANYON";          hint[34] = "Deep gorge";
      answer[35] = "CARPET";          hint[35] = "Textile fabric for covering a floor";
      answer[36] = "CASTLE";          hint[36] = "Large fortified residence";
      answer[37] = "CHANCE";          hint[37] = "Way things happen through no known cause";
      answer[38] = "CLEVER";          hint[38] = "Quick at learning or understanding things";
      answer[39] = "COMBAT";          hint[39] = "Battle or contest";
      answer[40] = "DAZZLE";          hint[40] = "Make unable to see because of too much light";
      answer[41] = "DANGER";          hint[41] = "Liability or exposure to harm";
      answer[42] = "DEJECT";          hint[42] = "To depress the spirits of";
      answer[43] = "DELUGE";          hint[43] = "A great flood of water";
      answer[44] = "DIVINE";          hint[44] = "Of or pertaining to a god";
      answer[45] = "EMBARK";          hint[45] = "Begin an undertaking";
      answer[46] = "ENRICH";          hint[46] = "To supply with abundance of anything desirable";
      answer[47] = "ENIGMA";          hint[47] = "A puzzling or inexplicable occurence or situation";
      answer[48] = "ESCORT";          hint[48] = "Person or ship accompanying another as a protection or honour";
      answer[49] = "ESKIMO";          hint[49] = "Member of a people living in arctic regions";
      answer[50] = "EXEMPT";          hint[50] = "Free from an Obligation";
      answer[51] = "EXCITE";          hint[51] = "Rouse the emotions of";
      answer[52] = "EXODUS";		    hint[52] = "Mass Departure";
      answer[53] = "FAMILY";		    hint[53] = "Set of relations";
      answer[54] = "FEEBLE"; 	  	    hint[54] = "Weak,infirm";
      answer[55] = "FIESTA";		    hint[55] = "Holiday , festivity";
      answer[56] = "FURORE";		    hint[56] = "Uproar , fury";
      answer[57] = "GALLOP";		    hint[57] = "Fastest pace of the horse";
      answer[58] = "GLOOMY";		    hint[58] = "Dark , unlit";
      answer[59] = "GOSSIP";		    hint[59] = "Idle talk";
      answer[60] = "GIGGLE";		    hint[60] = "Laugh in half suppressed spasms";
      answer[61] = "HATRED";		    hint[61] = "Extreme dislike";
      answer[62] = "HEAVEN";		    hint[62] = "Abode of God and Angels";
      answer[63] = "HEROIC";		    hint[63] = "Very Brave";
      answer[64] = "HICCUP"; 		    hint[64] = "Involuntary spasm of the diaphragm";
      answer[65] = "HIJACK";		    hint[65] = "Seize control of";
      answer[66] = "HUMANE";		    hint[66] = "Benevolent , compassionate";
      answer[67] = "IGNITE";		    hint[67] = "Set fire to";
      answer[68] = "IMPACT";		    hint[68] = "Effect of sudden forcible contact";
      answer[69] = "INFECT";		    hint[69] = "Affect or contaminate with a virus";
      answer[70] = "INMATE";		    hint[70] = "Occupant of a hospital";
      answer[71] = "INBORN";		    hint[71] = "Existing from birth";
      answer[72] = "JUNGLE";		    hint[72] = "A land overgrown with tangle vegetation";
      answer[73] = "KETTLE";		    hint[73] = "Vessel for boiling water in";
      answer[74] = "KIDNAP";		    hint[74] = "Abduct";
      answer[75] = "KINDLE";		    hint[75] = "Set on fire";
      answer[76] = "LATEST";		    hint[76] = "Most recent";
      answer[77] = "LAVISH";		    hint[77] = "Producing in large quantities";
      answer[78] = "LEAGUE";		    hint[78] = "Groups";
      answer[79] = "LOTION";		    hint[79] = "Cosmetic liquid";
      answer[80] = "MANNER";		    hint[80] = "Way a thing is done";
      answer[81] = "LUSTRE";		    hint[81] = "Shining surface";
      answer[82] = "MANIAC";		    hint[82] = "Person behaving wildly";
      answer[83] = "MASCOT";		    hint[83] = "Something which brings luck";
      answer[84] = "MENACE";		    hint[84] = "Threat";
      answer[85] = "MIGHTY";		    hint[85] = "Powerful";
      answer[86] = "MINING";		    hint[86] = "Digging ground to obtain something";
      answer[87] = "MOMENT";		    hint[87] = "Very brief portion of time";
      answer[88] = "MODEST";		    hint[88] = "Expressing a humble estimate of one's own merits";
      answer[89] = "NATURE";		    hint[89] = "Person's innate qualities";
      answer[90] = "NEEDED";		    hint[90] = "A neccessary want"		;
      answer[91] = "NOODLE";		    hint[91] = "Strip or ring of Pasta"		;
      answer[92] = "NOTION";		    hint[92] = "Opinion"		;
      answer[93] = "NOVELS";		    hint[93] = "Set of fictitious prose story books"	;
      answer[94] = "NEPHEW";		    hint[94] = "Son of one's brother or sister"		;
      answer[95] = "ORANGE";		    hint[95] = "Fruit , colour";
      answer[96] = "OCCUPY";		    hint[96] = "Live in"		;
      answer[97] = "ORACLE";		    hint[97] = "Place at which divine prophecy was sought";
      answer[98] = "ORCHID";		    hint[98] = "Plants with brilliant flowers";
      answer[99] = "ORIGIN";		    hint[99] = "Starting-point";

    //Abhishek's Words

      answer[100]= "QUARRY";
      answer[101]= "QUARTZ";
      answer[102]= "QUIVER";
      answer[103]= "RADIAN";
      answer[104]= "RACISM";
      answer[105]= "RANDOM";
      answer[106]= "RUSTLE";
      answer[107]= "ROBUST";
      answer[108]= "RATING";
      answer[109]= "REASON";
      answer[110]= "RECEDE";
      answer[111]= "RIDDLE";
      answer[112]= "REFINE";
      answer[113]= "REFORM";
      answer[114]= "REGIME";
      answer[115]= "REMEDY";
      answer[116]= "REMOTE";
      answer[117]= "REPENT";
      answer[118]= "RESIDE";
      answer[119]= "RESIST";
      answer[120]= "REVIEW";
      answer[121]= "REWARD";
      answer[122]= "RIPPLE";
      answer[123]= "SACHET";
      answer[124]= "SALMON";
      answer[125]= "SCANTY";
      answer[126]= "SCARCE";
      answer[127]= "SCRIPT";
      answer[128]= "SECRET";
      answer[129]= "SEQUEL";
      answer[130]= "SONATA";
      answer[131]= "STABLE";
      answer[132]= "STENCH";
      answer[133]= "STREAK";
      answer[134]= "SUBTLE";
      answer[135]= "SUPERB";
      answer[136]= "TANGLE";
      answer[137]= "TECHNO";
      answer[138]= "TEMPER";
      answer[139]= "THATCH";
      answer[140]= "TRIVIA";
      answer[141]= "TUMBLE";
      answer[142]= "THRASH";
      answer[143]= "VOTIVE";
      answer[144]= "WARREN";
      answer[145]= "TIMBRE";
      answer[146]= "TORRID";
      answer[147]= "TREBLE";
      answer[148]= "TUSSLE";
      answer[149]= "TYCOON";

    //Abhishek's Hints

      hint[100] = "A place where stone dug out of the earth";
      hint[101] = "A hard mineral consiting of silica";
      hint[102] = "Shake or vibrate slightly";
      hint[103] = "An angle of 57.3 degrees";
      hint[104] = "Discrimination";
      hint[105] = "Done/happening without any plan";
      hint[106] = "Soft crackling sound";
      hint[107] = "Withstand difficult conditions";
      hint[108] = "Classification based on quality";
      hint[109] = "Cause or explanation";
      hint[110] = "Move back or further away";
      hint[111] = "A puzzling question";
      hint[112] = "Make something pure by removing unwanted";
      hint[113] = "Change something to improve it";
      hint[114] = "Government,strictly controlling a state";
      hint[115] = "Put right an undesirable situation";
      hint[116] = "Far away in space or time";
      hint[117] = "Now,feel sorry for something bad you have done";
      hint[118] = "Live in particular place";
      hint[119] = "Withstanding the action or effect ";
      hint[120] = "Consider something again";
      hint[121] = "Given in recognition";
      hint[122] = "Series of waves";
      hint[123] = "Small sealed packet";
      hint[124] = "Large fish with pink flesh";
      hint[125] = "Too little";
      hint[126] = "Rarely found";
      hint[127] = "Written text of a play";
      hint[128] = "Hide from others";
      hint[129] = "A book continueing from the earlier one";
      hint[130] = "A piece of music for a solo instrument";
      hint[131] = "A building where horses are kept";
      hint[132] = "Strong unpleasant smell";
      hint[133] = "A long,thin mark";
      hint[134] = "As delicate as to be difficult to analyse";
      hint[135] = "Very good !";
      hint[136] = "Twist together into a knotted mass";
      hint[137] = "A style of fast electronic dance music";
      hint[138] = "A person's state of mind";
      hint[139] = "A roof covering of straw,grass";
      hint[140] = "Unimportant details of an information";
      hint[141] = "A sudden or clumsy fall";
      hint[142] = "Beat repeatedly with a whip";
      hint[143] = "Offered to god as sign of thanks !";
      hint[144] = "A network of interconnected rabbit burrows";
      hint[145] = "Quality of sound in a voice or music";
      hint[146] = "Very hot and dry";
      hint[147] = "A high pitched voice";
      hint[148] = "A short struggle";
      hint[149] = "A powerful person in business or industry";

        var r =(Math.floor(Math.random()*1000)%150);
         randString = answer[r];
         var ascii;
        for(var i=0;i<7;i++)
        {
        ascii=randString.charCodeAt(i);
        charArray[i] = String.fromCharCode(ascii);
        //console.log(charArray[i]);
        }
        Hint=hint[r];//complete the hint array and return the hint object with index r


}

function down(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y+3;
        p.x=p.x-1;

        break
    case 2:p.y=p.y+4;
        p.x=p.x+4;

        break;
    case 3:p.y=p.y+5;
        p.x=p.x-2;

             }
}


function up(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y-2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y-1;
        p.x=p.x-3;

        break
    case 2:p.y=p.y-3;
        p.x=p.x+1;

        break;
    case 3:p.y=p.y-2;
        p.x=p.x+4;

        break;

              }
}


function right(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x+3;

        break;
    case 1:p.y=p.y-2;
        p.x=p.x+2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x+5;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x+1;

        break;

              }
}


function left(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x-4;
 break;
    case 1:p.y=p.y-2;
        p.x=p.x-2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x-3;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x-1;

        break;

              }
}




function down1(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y+3;
        p.x=p.x-1;

        break
    case 2:p.y=p.y+4;
        p.x=p.x+4;

        break;
    case 3:p.y=p.y+5;
        p.x=p.x-2;

             }
}


function up1(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y-2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y-1;
        p.x=p.x-3;

        break
    case 2:p.y=p.y-3;
        p.x=p.x+1;

        break;
    case 3:p.y=p.y-2;
        p.x=p.x+4;

        break;

              }
}


function right1(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x+3;

        break;
    case 1:p.y=p.y-2;
        p.x=p.x+2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x+5;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x+1;

        break;

              }
}


function left1(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x-4;
 break;
    case 1:p.y=p.y-2;
        p.x=p.x-2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x-3;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x-1;

        break;

              }
}




function down2(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y+3;
        p.x=p.x-1;

        break
    case 2:p.y=p.y+4;
        p.x=p.x+4;

        break;
    case 3:p.y=p.y+5;
        p.x=p.x-2;

             }
}


function up2(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y-2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y-1;
        p.x=p.x-3;

        break
    case 2:p.y=p.y-3;
        p.x=p.x+1;

        break;
    case 3:p.y=p.y-2;
        p.x=p.x+4;

        break;

              }
}


function right2(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x+3;

        break;
    case 1:p.y=p.y-2;
        p.x=p.x+2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x+5;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x+1;

        break;

              }
}


function left2(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x-4;
 break;
    case 1:p.y=p.y-2;
        p.x=p.x-2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x-3;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x-1;

        break;

              }
}




function down3(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y+3;
        p.x=p.x-1;

        break
    case 2:p.y=p.y+4;
        p.x=p.x+4;

        break;
    case 3:p.y=p.y+5;
        p.x=p.x-2;

             }
}


function up3(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y-2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y-1;
        p.x=p.x-3;

        break
    case 2:p.y=p.y-3;
        p.x=p.x+1;

        break;
    case 3:p.y=p.y-2;
        p.x=p.x+4;

        break;

              }
}


function right3(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x+3;

        break;
    case 1:p.y=p.y-2;
        p.x=p.x+2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x+5;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x+1;

        break;

              }
}


function left3(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x-4;
 break;
    case 1:p.y=p.y-2;
        p.x=p.x-2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x-3;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x-1;

        break;

              }
}



function down4(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y+3;
        p.x=p.x-1;

        break
    case 2:p.y=p.y+4;
        p.x=p.x+4;

        break;
    case 3:p.y=p.y+5;
        p.x=p.x-2;

             }
}


function up4(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y-2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y-1;
        p.x=p.x-3;

        break
    case 2:p.y=p.y-3;
        p.x=p.x+1;

        break;
    case 3:p.y=p.y-2;
        p.x=p.x+4;

        break;

              }
}


function right4(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x+3;

        break;
    case 1:p.y=p.y-2;
        p.x=p.x+2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x+5;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x+1;

        break;

              }
}


function left4(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x-4;
 break;
    case 1:p.y=p.y-2;
        p.x=p.x-2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x-3;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x-1;

        break;

              }
}



function down5(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y+3;
        p.x=p.x-1;

        break
    case 2:p.y=p.y+4;
        p.x=p.x+4;

        break;
    case 3:p.y=p.y+5;
        p.x=p.x-2;

             }
}


function up5(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y-2;
        p.x=p.x+1;

        break;
    case 1:p.y=p.y-1;
        p.x=p.x-3;

        break
    case 2:p.y=p.y-3;
        p.x=p.x+1;

        break;
    case 3:p.y=p.y-2;
        p.x=p.x+4;

        break;

              }
}


function right5(r,p)
              {

              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x+3;

        break;
    case 1:p.y=p.y-2;
        p.x=p.x+2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x+5;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x+1;

        break;

              }
}


function left5(r,p)
              {


              switch(r)
              {
    case 0:p.y=p.y+1;
        p.x=p.x-4;
 break;
    case 1:p.y=p.y-2;
        p.x=p.x-2;

        break
    case 2:p.y=p.y+1;
        p.x=p.x-3;

        break;
    case 3:p.y=p.y-3;
        p.x=p.x-1;

        break;

              }
}










