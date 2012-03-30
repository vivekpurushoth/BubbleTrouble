import QtQuick 1.0
import "balloon.js" as B



Rectangle {
    id:rect
    width: 640
    height: 360
    color: "#ffffff"
    border.color: "#ffffff"


 function g(s,d)
    {
      if(d.x==s.x+80)
          {
          s.x=s.x-1;
          d.x=d.x+1;
      }
      else if(d.x==s.x-80)
          {
          s.x=s.x+1;
          d.x=d.x-1;
      }
       else if(d.y==s.y-80)
          {
          s.y=s.y+1;
          d.y=d.y-1;
      }
     else  if(d.y==s.y+80)
          {
          s.y=s.y-10;
          d.y=d.y+10;
      }
       else if(d.y==s.y-(1.412*80))
          {
          s.y=s.y+10;
          s.x=s.x+10;
          d.y=d.y-10;
          d.x=d.x-10;
      }
       else if(d.y==s.y+(1.412*80))
          {
          s.y=s.y-10;
          s.x=s.x-10;
          d.y=d.y+10;
          d.x=d.x+10;
      }
    }


    Timer
    {
        id: base
        interval: 1
        running: true
        repeat:false

        onTriggered: {


rect.state='base state';
            st_1.running=true;
        }}


    Timer
    {
        id: st_1
        interval: 2000
        running: false
        repeat:false

        onTriggered: {


rect.state='State1';
            st_2.running=true;
        }}

    Timer
    {
        id: st_2
        interval: 1
        running: false
        repeat:false

        onTriggered: {


rect.state='State2';
            st1.running=true;
        }}







    Timer
    {
        id: st1
        interval: 4000
        running: false
        repeat:false

        onTriggered: {


rect.state='menu0';
            st2.running=true;
        }}




    Timer
    {
        id: st2
        interval: 1
        running:false
        repeat:false

        onTriggered: {


rect.state='menu1';
          st3.running=true;
        }}


    Timer
    {
        id: st3
        interval: 2000
        running: false
        repeat:false

        onTriggered: {


rect.state='menu2';
        }}

    Timer
    {
        id: pass
        interval: 5000
        running: false
        repeat:false

        onTriggered: {
            rect.state = "playarea"
               B.count=0;
               t01.running=true;


        }}

    Timer
    {
        id: check
        interval: 500
        running: false
        repeat:false

        onTriggered: {

            B.ushowA=text_input1.text;

            B.test();
            if(B.bol==1)
            {
//console.log("correct");
                rect.state='correct'
                pass.running=true;
            }
            else if(B.bol==0)
                {
                //console.log("wrong");
                rect.state='wrong'
                text16.text=B.randString;
                 pass.running=true;
            }

        }}

    Timer
    {
        id: t01
        interval: 1
        running: false
        repeat: false

        onTriggered: {
b1.x=641;
            b2.y=361;
            b3.x=-1;
            //b4.y=0;
            b5.y=-1;
            b6.x=-1;
              score.text=""+B.score;
          B.charFromString();
           text1.text=B.charArray[0];
           text2.text=B.charArray[1];
            text3.text=B.charArray[2];
           text4.text=B.charArray[3];
            text5.text=B.charArray[4];
          text6.text=B.charArray[5];
hint1.text=B.Hint;
t0.running=true
 controller1.repeat=true;
controller1.running=true
 one.running=true;

    }
    }



    Timer
    {
        id: controller1
        interval: 1
        running: false
        repeat:true ///change to true

        onTriggered: {
            score.text=""+B.score;
            if(B.level == 1) {
            if(B.count>15)
                    {
                controller1.repeat=false;
            t1.running=false;
          t2.running=false;
        t3.running=false;
         t4.running=false;
        t5.running=false;
        t6.running=false;

             t0.running=false

               check.running=true;

//            Qt.quit();
        }
            }

            else if(B.level == 2) {
                if(B.count>12)
                        { controller1.repeat=false;
                t1.running=false;
              t2.running=false;
            t3.running=false;
             t4.running=false;
            t5.running=false;
            t6.running=false;

                 t0.running=false

                     check.running=true;



            }
                }

            else if(B.level == 3) {
                if(B.count>9)
                        { controller1.repeat=false;
                t1.running=false;
              t2.running=false;
            t3.running=false;
             t4.running=false;
            t5.running=false;
            t6.running=false;

                 t0.running=false

                     check.running=true;
            }
                }
  }
    }

    Timer
    {
        id: t0
        interval: 1
        running: false
        repeat:true ///change to true

        onTriggered: {
score.text=""+B.score;
               t1.running=true;
             t2.running=true;
           t3.running=true;
            t4.running=true;
           t5.running=true;
           t6.running=true;
  }
    }



    Timer{
        id:one
        interval: 1000
        running: false;
        repeat: true
        onTriggered: {
            B.count=B.count+1;
            if(B.level == 1) {
                timeValue.text = 16-B.count;

            }
            else if(B.level == 2) {
                timeValue.text = 13-B.count;

            }
            else if(B.level == 3) {
                timeValue.text = 10-B.count;

            }
        }

    }




    Timer
             {
                 id: t1
                 interval: 2
                running: false
                repeat: false

                onTriggered: {


          {


//                        g(b1,b2)
//                        g(b1,b3)
//                        g(b1,b4)
//                        g(b1,b5)
//                        g(b1,b6)

                  if(b1.x<640 && b1.y<=30  )//up collision
                                                         {
                                                         B.ran=Math.round(10*Math.random()%4);
          //console.log("up2")
                                                          B.flag1=1;
                                                      }
                                                     else if(b1.x<=640 && b1.y>=250)//down collision
                                                         {
                                          //console.log("down2")

                                                         B.ran=Math.round(10*Math.random()%4);
                                                         B.flag1=2;
                                                     }

                                                    else if(b1.x<0 && b1.y<360)//left collisioin
                                                         {
                                                         //console.log("lef2t")

                                                         B.ran=Math.round(10*Math.random()%4);
                                                         B.flag1=3;

                                                   }
                                                   else if(b1.x>580 && b1.y<360)//right collision
                                                           {
                                                     //console.log("right2")
                                                      B.ran=Math.round(10*Math.random()%4);
                                                      B.flag1=4;
                                              }

                                                  if(B.flag1==1)
                                                     {

                                                      B.down(B.ran,b1)

                                                   }
                                                   else  if(B.flag1==2)
                                                      {
                                                          B.up(B.ran,b1)

                                                }
                                                    else  if(B.flag1==3)
                                                    {
                                                         B.right(B.ran,b1)

                                                }
                                                    else  if(B.flag1==4)
                                                    {
                                                        B.left(B.ran,b1)

                                                 }


      }



              }
            }

    Timer
             {
                 id: t2
                 interval: 7
                running: false
                repeat: false

                onTriggered: {


          {
//                        g(b2,b1)
//                        g(b2,b3)
//                        g(b1,b4)
//                        g(b1,b5)
//                        g(b1,b6)

                  if(b2.x<640 && b2.y<=30  )//up collision
                                                         {
                                                         B.ran1=Math.round(10*Math.random()%4);
          //console.log("up2")
                                                          B.flag2=1;
                                                      }
                                                     else if(b2.x<640 && b2.y>=250)//down collision
                                                         {
                                          //console.log("down2")

                                                         B.ran1=Math.round(10*Math.random()%4);
                                                         B.flag2=2;
                                                     }

                                                    else if(b2.x<0 && b2.y<360)//left collisioin
                                                         {
                                                         //console.log("lef2t")

                                                         B.ran1=Math.round(10*Math.random()%4);
                                                         B.flag2=3;

                                                   }
                                                   else if(b2.x>580 && b2.y<360)//right collision
                                                           {
                                                     //console.log("right2")
                                                      B.ran1=Math.round(10*Math.random()%4);
                                                      B.flag2=4;
                                              }

                                                  if(B.flag2==1)
                                                     {

                                                      B.down1(B.ran1,b2)

                                                   }
                                                   else  if(B.flag2==2)
                                                      {
                                                          B.up1(B.ran1,b2)

                                                }
                                                    else  if(B.flag2==3)
                                                    {
                                                         B.right1(B.ran1,b2)

                                                }
                                                    else  if(B.flag2==4)
                                                    {
                                                        B.left1(B.ran1,b2)

                                                 }


      }



              }
            }

    Timer
         {
             id: t3
             interval: 2
            running: false
            repeat: false

            onTriggered: {


      {
//                    g(b3,b1)
//                    g(b3,b2)
//                        g(b1,b4)
//                        g(b1,b5)
//                        g(b1,b6)

              if(b3.x<640 && b3.y<=30  )//up collision
                                                     {
                                                     B.ran2=Math.round(10*Math.random()%4);
      //console.log("up2")
                                                      B.flag3=1;
                                                  }
                                                 else if(b3.x<640 && b3.y>=250)//down collision
                                                     {
                                      //console.log("down2")

                                                     B.ran2=Math.round(10*Math.random()%4);
                                                     B.flag3=2;
                                                 }

                                                else if(b3.x<0 && b3.y<360)//left collisioin
                                                     {
                                                     //console.log("lef2t")

                                                     B.ran2=Math.round(10*Math.random()%4);
                                                     B.flag3=3;

                                               }
                                               else if(b3.x>580 && b3.y<360)//right collision
                                                       {
                                                 //console.log("right2")
                                                  B.ran2=Math.round(10*Math.random()%4);
                                                  B.flag3=4;
                                          }

                                              if(B.flag3==1)
                                                 {

                                                  B.down2(B.ran2,b3)

                                               }
                                               else  if(B.flag3==2)
                                                  {
                                                      B.up2(B.ran2,b3)

                                            }
                                                else  if(B.flag3==3)
                                                {
                                                     B.right2(B.ran2,b3)

                                            }
                                                else  if(B.flag3==4)
                                                {
                                                    B.left2(B.ran2,b3)

                                             }


  }



          }
        }

    Timer
             {
                 id: t4
                 interval: 2
                running: false
                repeat: false

                onTriggered: {


          {
//                        g(b4,b1)
//                        g(b4,b2)
    //                        g(b1,b4)
    //                        g(b1,b5)
    //                        g(b1,b6)

                  if(b4.x<640 && b4.y<=30  )//up collision
                                                         {
                                                         B.ran3=Math.round(10*Math.random()%4);
          //console.log("up2")
                                                          B.flag4=1;
                                                      }
                                                     else if(b4.x<640 && b4.y>=250)//down collision
                                                         {
                                          //console.log("down2")

                                                         B.ran3=Math.round(10*Math.random()%4);
                                                         B.flag4=2;
                                                     }

                                                    else if(b4.x<0 && b4.y<360)//left collisioin
                                                         {
                                                         //console.log("lef2t")

                                                         B.ran3=Math.round(10*Math.random()%4);
                                                         B.flag4=3;

                                                   }
                                                   else if(b4.x>580 && b4.y<360)//right collision
                                                           {
                                                     //console.log("right2")
                                                      B.ran3=Math.round(10*Math.random()%4);
                                                      B.flag4=4;
                                              }

                                                  if(B.flag4==1)
                                                     {

                                                      B.down2(B.ran3,b4)

                                                   }
                                                   else  if(B.flag4==2)
                                                      {
                                                          B.up2(B.ran3,b4)

                                                }
                                                    else  if(B.flag4==3)
                                                    {
                                                         B.right2(B.ran3,b4)

                                                }
                                                    else  if(B.flag4==4)
                                                    {
                                                        B.left2(B.ran3,b4)

                                                 }


      }



              }
            }

    Timer
                {
                    id: t5
                    interval: 2
                   running: false
                   repeat: false

                   onTriggered: {


             {
   //                        g(b5,b1)
   //                        g(b5,b2)
       //                        g(b1,b5)
       //                        g(b1,b5)
       //                        g(b1,b6)

                     if(b5.x<640 && b5.y<=30  )//up collision
                                                            {
                                                            B.ran4=Math.round(10*Math.random()%4);
             //console.log("up2")
                                                             B.flag5=1;
                                                         }
                                                        else if(b5.x<640 && b5.y>=250)//down collision
                                                            {
                                             //console.log("down2")

                                                            B.ran4=Math.round(10*Math.random()%4);
                                                            B.flag5=2;
                                                        }

                                                       else if(b5.x<0 && b5.y<360)//left collisioin
                                                            {
                                                            //console.log("lef2t")

                                                            B.ran4=Math.round(10*Math.random()%4);
                                                            B.flag5=3;

                                                      }
                                                      else if(b5.x>580 && b5.y<360)//right collision
                                                              {
                                                        //console.log("right2")
                                                         B.ran4=Math.round(10*Math.random()%4);
                                                         B.flag5=4;
                                                 }

                                                     if(B.flag5==1)
                                                        {

                                                         B.down2(B.ran4,b5)

                                                      }
                                                      else  if(B.flag5==2)
                                                         {
                                                             B.up2(B.ran4,b5)

                                                   }
                                                       else  if(B.flag5==3)
                                                       {
                                                            B.right2(B.ran4,b5)

                                                   }
                                                       else  if(B.flag5==4)
                                                       {
                                                           B.left2(B.ran4,b5)

                                                    }


         }



                 }
               }

    Timer
                {
                    id: t6
                    interval: 2
                   running: false
                   repeat: false

                   onTriggered: {


             {
   //                        g(b6,b1)
   //                        g(b6,b2)
       //                        g(b1,b6)
       //                        g(b1,b6)
       //                        g(b1,b6)

                     if(b6.x<640 && b6.y<=30  )//up collision
                                                            {
                                                            B.ran5=Math.round(10*Math.random()%4);
             //console.log("up2")
                                                             B.flag6=1;
                                                         }
                                                        else if(b6.x<640 && b6.y>=250)//down collision
                                                            {
                                             //console.log("down2")

                                                            B.ran5=Math.round(10*Math.random()%4);
                                                            B.flag6=2;
                                                        }

                                                       else if(b6.x<0 && b6.y<360)//left collisioin
                                                            {
                                                            //console.log("lef2t")

                                                            B.ran5=Math.round(10*Math.random()%4);
                                                            B.flag6=3;

                                                      }
                                                      else if(b6.x>580 && b6.y<360)//right collision
                                                              {
                                                        //console.log("right2")
                                                         B.ran5=Math.round(10*Math.random()%4);
                                                         B.flag6=4;
                                                 }

                                                     if(B.flag6==1)
                                                        {

                                                         B.down2(B.ran5,b6)

                                                      }
                                                      else  if(B.flag6==2)
                                                         {
                                                             B.up2(B.ran5,b6)

                                                   }
                                                       else  if(B.flag6==3)
                                                       {
                                                            B.right2(B.ran5,b6)

                                                   }
                                                       else  if(B.flag6==4)
                                                       {
                                                           B.left2(B.ran5,b6)

                                                    }


         }



                 }
               }

    Image {
        id:b1
        x: -1
        y: 171
        visible: false

        source: "red100.png"

        Text {
            id: text1
            x: 16
            y: 23
            width: 77
            height: 20
            text: "text"
            font.pixelSize: 29
        }

    }

    Image {
        id: b2
        x: 190
        y: -1
        visible: false
        source: "green100.png"

        Text {
            id: text2
            x: 15
            y: 22
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 30
        }

    }

    Image {
        id: b4
        x: 641
        y: 161
        visible: false
        source: "blue100.png"

        Text {
            id: text4
            x: 15
            y: 22
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 30
        }


    }

    Image {
        id: b3
        x: 112
        y: 361
        visible: false
        source: "red100.png"

        Text {
            id: text3
            x: 15
            y: 22
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 30
        }
    }

    Image {
        id: b5
        x: -1
        y: 83
        visible: false
        source: "green100.png"

        Text {
            id: text5
            x: 15
            y: 22
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 30
        }
    }

    Image {
        id: b6
        x: 641
        y: 83
        visible: false
        source: "blue100.png"

        Text {
            id: text6
            x: 15
            y: 22
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 30

            //anchors.centerIn: parent.Center;

        }
    }

    Image {
        id: i1
        x: 12
        y: 305
        visible: false
        source: "red100.png"
    }

    Image {
        id: image2
        x: 77
        y: -30
        source: "blue100.png"
        opacity: 0
    }

    Image {
        id: i2
        x: 442
        y: -80
        visible: false
        source: "green200.png"
    }

    Image {
        id: i3
        x: 332
        y: 343
        visible: false
        source: "blue300.png"
    }

    Image {
        id: i4
        x: 248
        y: -160
        visible: false
        source: "green200.png"
    }

    Image {
        id: i5
        x: 140
        y: 326
        visible: false
        source: "blue300.png"

        Text {
            id: text20
            x: 119
            y: 101
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0

            MouseArea {
                id: mouse_area5
                x: 124
                y: 119
                width: 100
                height: 100
                opacity: 0
                onClicked: {
                         rect.state='helpmenu2'
                     }
            }
        }
    }

    Image {
        id: i6
        x: 622
        y: 204
        visible: false
        source: "blue100.png"
    }

    Image {
        id: i7
        x: 632
        y: 305
        visible: false
        source: "green200.png"
    }
        Text {
            id: playButton
            x: 60
            y: 80
            width: 80
            height: 20
            text: "LEVEL"
            font.pixelSize: 12
            opacity: 0

            MouseArea {
                id: level_ma
                x: 380
                y: -180
                width: 100
                height: 100
                opacity: 1
                onClicked: {
                    rect.state='level'

                }
            }
        }


    Image {
        id: image1
        x: 160
        y: 365
        source: "blue100.png"
        opacity: 0
    }

    Image {
        id: i8
        x: 277
        y: 189
        visible: false
        source: "blue300.png"
    }
        Text {
            id: creditsButton
            x: 60
            y: 80
            width: 80
            height: 20
            text: "CREDITS"
            font.pixelSize: 12
            opacity: 0

            MouseArea {
                id: credit_ma
                x: 234
                y: 82
                width: 100
                height: 100
                opacity: 1
                onClicked: {
                    rect.state='credits';//credits state
                }
            }
        }


    Image {
        id: i9
        x: -161
        y: 205
        visible: false
        source: "green200.png"

    }


        Text {
            id: exitButton
            x: 60
            y: 80
            width: 80
            height: 20
            text: "EXIT"
            font.pixelSize: 12
            opacity: 0

            MouseArea {
                id: exit_ma
                x: -50
                y: 306
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    rect.state = "exitMenu"
            }
        }
        }


    Image {
        id: i10
        x: -61
        y: -1
        visible: false
        source: "red100.png"
    }

    Image {
        id: i11
        x: 614
        y: 4
        visible: false
        source: "green200.png"

        Text {
            id: text15
            x: 454
            y: 108
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }
    }

    Image {
        id: i12
        x: -82
        y: 105
        visible: false
        source: "red100.png"
    }

    Image {
        id: level1
        x: 102
        y: 251
        source: "red100.png"
        opacity: 0

        Text {
            id: levtxt1
            x: 39
            y: 43
            width: 80
            height: 20
            text: "EASY"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: level1ma
            x: 0
            y: 1
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                B.level = 1
                B.count=0;



                 t01.running=true;
                controller1.running=true;
                one.running=true;
                one.repeat=true;
                 // score.text=""+B.score;
                rect.state='playarea'
            }
        }
    }

    Image {
        id: level2
        x: 202
        y: 181
        source: "green200.png"
        opacity: 0

        Text {
            id: levtxt2
            x: 208
            y: 131
            width: 80
            height: 20
            text: "MEDIUM"
            font.pixelSize: 12
            opacity: 0


        }

        MouseArea {
            id: level2ma
            x: 119
            y: -137
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                B.level = 2
                B.count=0;



                 t01.running=true;
                controller1.running=true;
                one.running=true;
                one.repeat=true;
                 // score.text=""+B.score;
                rect.state='playarea'
            }
        }
    }

    Image {
        id: level3
        x: 277
        y: 14
        source: "blue300.png"
        opacity: 0

        Text {
            id: levtxt3
            x: 481
            y: 257
            width: 80
            height: 20
            text: "HARD"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: level3ma
            x: 284
            y: 264
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                B.level = 3
                B.count=0;



                 t01.running=true;
                controller1.running=true;
                one.running=true;
                one.repeat=true;
                 // score.text=""+B.score;
                rect.state='playarea'
            }
        }
    }



    Image {
        id: balball1
        x: 51
        y: 361
        source: "red100.png"
    }

    Image {
        id: balball2
        x: 150
        y: -101
        source: "red100.png"
    }

    Rectangle {
        id: b
        x: 34
        y: 14
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }

    Rectangle {
        id: a
        x: 293
        y: 63
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }

    Rectangle {
        id: l1
        x: 42
        y: 14
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }

    Rectangle {
        id: l2
        x: 51
        y: 4
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }


    Image {
        id: balball3
        x: 324
        y: 361
        visible: true
        source: "red100.png"
        opacity: 1
    }

    Image {
        id: balball4
        x: 209
        y: 361
        visible: true
        source: "red100.png"
        opacity: 1
    }

    Rectangle {
        id: rectangle1
        x: 60
        y: 20
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }

    Rectangle {
        id: rectangle2
        x: 94
        y: 30
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }

    Rectangle {
        id: rectangle3
        x: 180
        y: 251
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }

    Rectangle {
        id: rectangle4
        x: 20
        y: 14
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }

    Rectangle {
        id: rectangle5
        x: 60
        y: 49
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }



    Text {
        id: text10
        x: 56
        y: 73
        width: 80
        height: 20
        text: "BACK"
        font.pixelSize: 12
        opacity: 0

        MouseArea {
            id: mouse_area1
            x: 79
            y: 55
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent
            onClicked: {
                controller1.running=false;
                one.running=false;
                one.repeat=false;
                rect.state='back'


            }
        }
    }

    Rectangle {
        id: rectangle6
        x: 84
        y: 65
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0

        TextInput {
            id: text_input1
            x: 100
            y: -1
            width: 80
            height: 20
            text: "textInput"
            font.pixelSize: 12
            opacity: 0
        }

    }

    Text {
        id: text11
        x: 523
        y: 9
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Image {
        id: image5
        x: 71
        y: 261
        source: "blue100.png"
        opacity: 0
    }

    Image {
        id: image6
        x: 239
        y: 271
        source: "blue100.png"
        opacity: 0
    }

    Image {
        id: image7
        x: 247
        y: 276
        source: "blue100.png"
        opacity: 0
    }

    Image {
        id: image8
        x: 546
        y: 9
        source: "blue100.png"
        opacity: 0
    }

    Text {
        id: score
        x: 119
        y: 90
        width: 80
        height: 20
        text: "0"
        font.pixelSize: 12
        opacity: 0
    }

    Text {
        id: hint
        x: 66
        y: 309
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Rectangle {
        id: rectangle7
        x: 162
        y: 55
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0
    }

    Text {
        id: hint1
        x: 99
        y: 337
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Image {
        id: image9
        x: 102
        y: 76
        source: "green200.png"
        opacity: 0

        Text {
            id: text12
            x: 383
            y: 294
            width: 80
            height: 20
            text: "RESUME"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: resume_ma
            x: 252
            y: 89
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent
            onClicked: {


                controller1.running=true;
                one.running=true;
                one.repeat=true;
                 // score.text=""+B.score;
                rect.state='playarea'
                hint1.text=B.Hint
            }
        }
    }



    Image {
        id: image10
        x: 51
        y: 14
        source: "blue300.png"
        opacity: 0

        Text {
            id: text13
            x: 139
            y: 143
            width: 80
            height: 20
            text: "BACK TO MENU"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: backmenu_ma
            x: 250
            y: 114
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent

            onClicked: {
                rect.state='menu2'
            }
        }
    }

    Image {
        id: image11
        x: 464
        y: 23
        source: "red100.png"
        opacity: 0

        Text {
            id: text14
            x: 247
            y: 151
            width: 80
            height: 20
            text: "HELP"
            font.pixelSize: 12
            opacity: 0

        }

        MouseArea {
            id: help_ma
            x: 244
            y: 81
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent

            onClicked: {
            rect.state='help'//help state
            }
        }
    }

    Image {
        id: yesBubble
        x: 122
        y: 125
        source: "blue100.png"
        opacity: 0

        Text {
            id: yesText
            x: 209
            y: 183
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

            MouseArea {
                id: mouse_area2
                x: 0
                y: 0
                width: 100
                height: 100
                opacity: 0
                anchors.fill:parent
                onClicked:
                    {
                    Qt.quit();
                }
            }

    }

    Image {
        id: noBubble
        x: 410
        y: 150
        source: "blue100.png"
        opacity: 0

        Text {
            id: noText
            x: 442
            y: 183
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

            MouseArea {
                id: mouse_area3
                x: 0
                y: 0
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    rect.state='menu2'
                }

            }

    }

    Text {
        id: timeText
        x: 533
        y: 332
        width: 80
        height: 20
        text: "TIME:"
        font.pixelSize: 12
        opacity: 0
    }

    Text {
        id: timeValue
        x: 609
        y: 338
        width: 80
        height: 20
        text: ""
        font.pixelSize: 12
        opacity: 0
    }

    Image {
        id: image12
        x: 210
        y: 30
        source: "green200.png"
        opacity: 0
    }

    Text {
        id: text7
        x: 302
        y: 116
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Text {
        id: text8
        x: 314
        y: 150
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Text {
        id: text9
        x: 299
        y: 102
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Text {
        id: text16
        x: 247
        y: 257
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }



    Text {
        id: text18
        x: 48
        y: 289
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0

        MouseArea {
            id: backhelma
            x: 12
            y: 246
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                rect.state='back'
            }
        }
    }

    Image {
        id: image15
        x: 12
        y: 246
        source: "red100.png"
        opacity: 0

        MouseArea {
            id: mouse_area9
            x: 10
            y: 105
            width: 100
            height: 100
            opacity: 0
            onClicked: {
            rect.state='menu2'
            }
}
    }

    Text {
        id: text19
        x: 51
        y: 291
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Image {
        id: image13
        x: 150
        y: 120
        source: "red100.png"
        opacity: 0
    }

    Text {
        id: text17
        x: 191
        y: 155
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0

        MouseArea {
            id: mouse_area6
            x: 84
            y: 30
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                rect.state='menu2'
            }
        }

        MouseArea {
            id: mouse_area4
            x: 8
            y: -1
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                rect.state='menu2'
            }
        }
    }

    Image {
        id: image14
        x: 270
        y: 246
        source: "red100.png"
        opacity: 0

        MouseArea {
            id: mouse_area8
            x: 10
            y: 105
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                rect.state='back'
            }
}
    }

    Text {
        id: text21
        x: 296
        y: 284
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0

        MouseArea {
            id: mouse_area7
            x: 120
            y: 83
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                rect.state='back'
            }
        }
    }

    Rectangle {
        id: rectangle8
        x: 140
        y: 53
        width: 200
        height: 200
        color: "#ffffff"
        opacity: 0
        ListView {
            id: list_view2
            x: 40
            y: 5
            width: 370
            height: 300
            opacity: 1
            model: helpModel2
                        delegate: Text {
                            text : helpElement
                            color : "purple"
                            font.family: "Comic Sans MS"
                            font.pixelSize: 30

        }
    }
        ListModel {
            id: helpModel2
            ListElement {
                helpElement :"<pre align='left'>This is a simple and witty
test of your vocabulary
and responsiveness

A single player game
where the score grows for
every correct answer and
diminishes for every
wrong answer with
respect to the extent of
difficulty levels.

A 6-lettered English word is
to be guessed from the
hint provided and with the
help of the randomly
moving letters on the screen.

The time alloted decreases
up the difficulty levels
and you are expected to be
quick enough at tougher
levels.

Enjoy the game and get
to know your own
dictionary volume
                </pre>"
            }
        }
    }



Rectangle {
    id: rectangle9
    x: 140
    y: 53
    width: 200
    height: 200
    color: "#ffffff"
    opacity: 0
    ListView {
        id: list_view1
        x: 40
        y: 5
        width: 370
        height: 300
        opacity: 1
        model: helpModel1
                    delegate: Text {
                        text : helpElement1
                        color : "purple"
                        font.family: "Comic Sans MS"
                        font.pixelSize: 30

    }
}
    ListModel {
        id: helpModel1
        ListElement {
            helpElement1 :"<pre align='left'>This is a simple and witty
test of your vocabulary
and responsiveness

A single player game
where the score grows for
every correct answer and
diminishes for every
wrong answer with
respect to the extent of
difficulty levels.

A 6-lettered English word is
to be guessed from the
hint provided and with the
help of the randomly
moving letters on the screen.

The time alloted decreases
up the difficulty levels
and you are expected to be
quick enough at tougher
levels.

Enjoy the game and get
to know your own
dictionary volume
            </pre>"
        }
    }
}

Rectangle {
    id: rectangle10
    x: 0
    y: 0
    width: 540
    height: 360
    color: "#ffffff"
    opacity: 0

    ListView {
        id: list_view4
        x: 0
        y: 0
        width: 540
        height: 360
        opacity: 1
        model: helpModel4
                    delegate: Text {
                        text : helpElement4
                        color : "purple"
                        font.family: "Comic Sans MS"
                        font.pixelSize: 30

    }
}
    ListModel {
        id: helpModel4
        ListElement {
            helpElement4 :"<pre align='centre'>
                 STUDENT FORUM NOKIA

                      ABHISHEK B S
                      RAKESH KUMAR R
                      SADAN SOHAN M
                      SANDEEP RAJU
                      VIVEK P
 Pinch us at:
             fivemasterminds@gmail.com

            </pre>"
        }
    }
}

Text {
    id: student
    x: 130
    y: 100
    text: "Student Developer Nokia "
    font.family: "Calibri"
    horizontalAlignment: Text.AlignLeft
    font.pixelSize: 40
}

Text {
    id: text22
    x: 257
    y: 172
    text: "Presents"
    horizontalAlignment: Text.AlignHCenter
    font.pixelSize: 30
}

Image {
    id: image3
    x: 38
    y: 64
    source: "bubbleButton.png"
    opacity: 0

    MouseArea {
        id: mouse_area10
        x: 42
        y: 63
        width: 100
        height: 100
        opacity: 1
        onClicked: {

            B.ushowA=text_input1.text;

            B.test();
            if(B.bol==1)
            {
//console.log("correct");
                rect.state='correct'
                pass.running=true;
            }
            else if(B.bol==0)
                {
                //console.log("wrong");
                rect.state='wrong'
                text16.text=B.randString;
                 pass.running=true;
            }

        }
}
}

Rectangle {
    id: rectangle11
    x: 20
    y: 79
    width: 200
    height: 200
    color: "#ffffff"
    opacity: 0
}

Image {
    id: image4
    x: 232
    y: 63
    source: "green200.png"
    opacity: 0
}





states: [
        State {
            name: "State1"

            PropertyChanges {
                target: rect
                visible: true
            }

            PropertyChanges {
                target: balball1
                x: 45
                y: 130
            }

            PropertyChanges {
                target: balball2
                x: 160
                y: 130
            }

            PropertyChanges {
                target: b
                x: 45
                y: 15
                width: 21
                height: 216
                color: "#2c0000"
                opacity: 0
            }

            PropertyChanges {
                target: a
                x: 248
                y: 131
                width: 16
                height: 100
                color: "#000000"
                opacity: 0
            }

            PropertyChanges {
                target: l1
                x: 275
                y: 15
                width: 21
                height: 216
                color: "#000000"
                opacity: 0
            }

            PropertyChanges {
                target: l2
                x: 311
                y: 15
                width: 21
                height: 216
                color: "#000000"
                opacity: 0
            }

            PropertyChanges {
                target: balball3
                x: 347
                y: 131
                opacity: 1
            }

            PropertyChanges {
                target: balball4
                x: 462
                y: 130
                opacity: 1
            }

            PropertyChanges {
                target: i8
                x: 402
                y: 189
            }

            PropertyChanges {
                target: rectangle1
                x: 622
                y: 131
                width: 16
                color: "#000000"
                opacity: 0
            }

            PropertyChanges {
                target: rectangle2
                x: 585
                y: 130
                width: 16
                color: "#000000"
                opacity: 0
            }

            PropertyChanges {
                target: rectangle3
                x: 573
                y: 130
                width: 65
                height: 15
                color: "#000000"
                radius: 0
                opacity: 0
            }

            PropertyChanges {
                target: student
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: text22
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: btFirst
                x: 1
                y: 1
                z: 21
                opacity: 1
            }
        },
        State {
            name: "State2"
            PropertyChanges {
                target: rect
                visible: true
            }

            PropertyChanges {
                target: balball1
                x: 45
                y: 130
            }

            PropertyChanges {
                target: balball2
                x: 160
                y: 130
            }

            PropertyChanges {
                target: b
                x: 45
                y: 15
                width: 21
                height: 216
                color: "#000000"
                opacity: 1
            }

            PropertyChanges {
                target: a
                x: 248
                y: 131
                width: 16
                color: "#000000"
                opacity: 1
            }

            PropertyChanges {
                target: l2
                x: 311
                y: 15
                width: 21
                height: 216
                color: "#000000"
                opacity: 1
            }

            PropertyChanges {
                target: l1
                x: 275
                y: 15
                width: 21
                height: 216
                color: "#000000"
                opacity: 1
            }

            PropertyChanges {
                target: balball3
                x: 347
                y: 131
                opacity: 1
            }

            PropertyChanges {
                target: balball4
                x: 462
                y: 131
                opacity: 1
            }

            PropertyChanges {
                target: i8
                x: 421
                y: 193
            }

            PropertyChanges {
                target: rectangle1
                x: 585
                y: 140
                width: 16
                height: 90
                color: "#000000"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle2
                x: 624
                y: 140
                width: 16
                height: 90
                color: "#000000"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle3
                x: 575
                y: 128
                width: 65
                height: 15
                color: "#000000"
                opacity: 1
            }

            PropertyChanges {
                target: text22
                visible: false
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: btSecond
                x: 1
                y: 1
                z: 21
                opacity: 1
            }

            PropertyChanges {
                target: btFirst
                x: 0
                y: 0
            }
        },
        State {
            name: "menu0"
            PropertyChanges {
                target: rect
                visible: true
            }

            PropertyChanges {
                target: i1
                visible: true
            }

            PropertyChanges {
                target: i2
                visible: true
            }

            PropertyChanges {
                target: i3
                visible: true
            }

            PropertyChanges {
                target: i4
                visible: true
            }

            PropertyChanges {
                target: i5
                visible: true
            }

            PropertyChanges {
                target: i6
                visible: true
            }

            PropertyChanges {
                target: i7
                visible: true
            }

            PropertyChanges {
                target: i8
                x: 351
                y: 271
                visible: true
            }

            PropertyChanges {
                target: i9
                visible: true
            }

            PropertyChanges {
                target: i10
                visible: true
            }

            PropertyChanges {
                target: i11
                visible: true
            }

            PropertyChanges {
                target: i12
                visible: true
            }

            PropertyChanges {
                target: image1
                x: 229
                y: 242
                opacity: 1
            }

            PropertyChanges {
                target: image2
                x: -38
                y: 171
                opacity: 1
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }
        },
        State {
            name: "menu1"
            PropertyChanges {
                target: rect
                visible: true
            }

            PropertyChanges {
                target: i1
                x: 410
                y: -65
                visible: true
            }

            PropertyChanges {
                target: i2
                x: 220
                y: -94
                z: 4
                visible: true
            }

            PropertyChanges {
                target: i3
                x: 448
                y: -59
                visible: true
            }

            PropertyChanges {
                target: i4
                x: 462
                y: 148
                z: 4
                visible: true
            }

            PropertyChanges {
                target: i5
                x: -50
                y: -65
                visible: true
            }

            PropertyChanges {
                target: i6
                x: 370
                y: 65
                visible: true
            }

            PropertyChanges {
                target: i7
                x: 206
                y: 64
                z: 4
                visible: true
            }

            PropertyChanges {
                target: i8
                x: 277
                y: 189
                visible: true
            }

            PropertyChanges {
                target: i9
                x: 119
                y: 207
                z: 4
                visible: true
            }

            PropertyChanges {
                target: i10
                x: 400
                y: 123
                visible: true
            }

            PropertyChanges {
                target: i11
                x: -50
                y: 181
                visible: true
            }

            PropertyChanges {
                target: i12
                x: 131
                y: 171
                visible: true
            }

            PropertyChanges {
                target: image1
                x: 577
                y: 306
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: image2
                x: 394
                y: 13
                opacity: 1
            }

            PropertyChanges {
                target: balball4
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball3
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }
        },
        State {
            name: "menu2"
            PropertyChanges {
                target: rect
                visible: true
            }



            PropertyChanges {
                target: i1
                x: 410
                y: -65
                visible: true
            }

            PropertyChanges {
                target: i2
                x: 220
                y: -94
                z: 4
                visible: true
            }

            PropertyChanges {
                target: i3
                x: 448
                y: -59
                visible: true
            }

            PropertyChanges {
                target: i4
                x: 462
                y: 148
                z: 4
                visible: true
            }

            PropertyChanges {
                target: i5
                x: -50
                y: -65
                visible: true
            }

            PropertyChanges {
                target: i6
                x: 370
                y: 65
                visible: true
            }

            PropertyChanges {
                target: i7
                x: 206
                y: 64
                width: 200
                z: 4
                visible: true
            }

            PropertyChanges {
                target: i8
                x: 277
                y: 189
                visible: true
            }

            PropertyChanges {
                target: i9
                x: 119
                y: 207
                z: 4
                visible: true
            }

            PropertyChanges {
                target: i10
                x: 400
                y: 123
                visible: true
            }

            PropertyChanges {
                target: i11
                x: -50
                y: 181
                visible: true
            }

            PropertyChanges {
                target: i12
                x: 131
                y: 171
                visible: true
            }

            PropertyChanges {
                target: image1
                x: 577
                y: 306
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: image2
                x: 394
                y: 13
                opacity: 1
            }

            PropertyChanges {
                target: playButton
                x: 268
                y: 125
                text: "PLAY"
                wrapMode: "NoWrap"
                z: 11
                scale: 1.1
                rotation: -360
                smooth: false
                horizontalAlignment: "AlignHCenter"
                font.pixelSize: 33
                font.italic: false
                font.family: "MV Boli"
                style: "Normal"
                font.pointSize: 19
                opacity: 1
            }

            PropertyChanges {
                target: exitButton
                x: 173
                y: 288
                opacity: 1
                z: 34
                font.family: "MV Boli"
                font.pixelSize: 33
                scale: 1.1
            }

            PropertyChanges {
                target: creditsButton
                x: 491
                y: 50
                wrapMode: "WordWrap"
                font.family: "MV Boli"
                font.pixelSize: 33
                scale: 1.1
                opacity: 1
            }

            PropertyChanges {
                target: credit_ma
                x: 1
                y: 0
                width: 159
                height: 40
                opacity: 1
            }

            PropertyChanges {
                target: level_ma
                x: -15
                y: 0
                width: 110
                height: 40
            }

            PropertyChanges {
                target: balball2
                visible: true
                opacity: 1
            }

            PropertyChanges {
                target: balball1
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: exit_ma
                x: 0
                y: 0
                width: 80
                height: 44
                anchors.bottomMargin: -24
                opacity: 1
            }

            PropertyChanges {
                target: balball4
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball3
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: text20
                x: 124
                y: 119
                text: "HELP"
                font.family: "MV Boli"
                font.pixelSize: 33
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area5
                x: 0
                y: 0
                width: 75
                height: 38
                opacity: 1
            }

            PropertyChanges {
                target: student
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }
        },
        State {
            name: "level"
            PropertyChanges {
                target: rect
                visible: true
            }

            PropertyChanges {
                target: i1
                x: "410"
                y: "-65"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i2
                x: 220
                y: -88
                opacity: 0
                visible: false
                z: "4"
            }

            PropertyChanges {
                target: i3
                x: "448"
                y: "-59"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i4
                x: 470
                y: 151
                opacity: 0
                visible: false
                z: "4"
            }

            PropertyChanges {
                target: i5
                x: "-50"
                y: "-65"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i6
                x: "370"
                y: "65"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i7
                x: "206"
                y: "64"
                width: 200
                opacity: 0
                visible: false
                z: "4"
            }

            PropertyChanges {
                target: i8
                x: "277"
                y: "189"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i9
                x: "119"
                y: "207"
                opacity: 0
                visible: false
                z: "4"
            }

            PropertyChanges {
                target: i10
                x: "400"
                y: "123"
                visible: false
            }

            PropertyChanges {
                target: i11
                x: "-50"
                y: "181"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i12
                x: "131"
                y: "171"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: image1
                x: "577"
                y: "306"
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: image2
                x: "394"
                y: "13"
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: playButton
                x: 268
                y: 125
                visible: false
                smooth: false
                font.pixelSize: 33
                style: "Normal"
                font.italic: true
                scale: 1.1
                rotation: -360
                font.family: "Tekton Pro Ext"
                z: 11
                font.pointSize: 19
                horizontalAlignment: "AlignHCenter"
                opacity: 0
            }

            PropertyChanges {
                target: exitButton
                x: 170
                y: 280
                visible: false
                font.pixelSize: 33
                font.family: "Tekton Pro Ext"
                scale: 1.1
                z: 0
                opacity: 0
            }

            PropertyChanges {
                target: creditsButton
                x: 459
                y: 50
                visible: false
                font.pixelSize: 33
                font.family: "Tekton Pro Ext"
                scale: 1.1
                opacity: 0
            }

            PropertyChanges {
                target: credit_ma
                x: 0
                y: 0
                width: 159
                height: 40
                opacity: 1
            }

            PropertyChanges {
                target: level_ma
                x: -15
                y: 0
                width: 110
                height: 40
            }

            PropertyChanges {
                target: level1
                x: 0
                y: -1
                opacity: 1
            }

            PropertyChanges {
                target: level2
                x: 119
                y: 35
                opacity: 1
            }

            PropertyChanges {
                target: level3
                x: 342
                y: 101
                opacity: 1
            }

            PropertyChanges {
                target: levtxt1
                x: 13
                y: 36
                text: "EASY"
                font.family: "Tekton Pro Ext"
                font.pixelSize: 24
                opacity: 1
            }

            PropertyChanges {
                target: levtxt2
                x: 20
                y: 79
                text: "MEDIUM"
                style: "Raised"
                font.family: "Tekton Pro Ext"
                font.pixelSize: 34
                opacity: 1
            }

            PropertyChanges {
                target: levtxt3
                x: 95
                y: 123
                text: "HARD"
                style: "Outline"
                font.family: "Tekton Pro Ext"
                font.pixelSize: 45
                opacity: 1
            }

            PropertyChanges {
                target: level1ma
                opacity: 1
            }

            PropertyChanges {
                target: level2ma
                x: 0
                y: 0
                width: 202
                height: 200
                opacity: 1
            }

            PropertyChanges {
                target: level3ma
                x: 0
                y: 0
                width: 300
                height: 300
                opacity: 1
            }

            PropertyChanges {
                target: balball1
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: balball2
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: image5
                x: 80
                y: 280
                width: 60
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: image6
                x: 280
                y: 251
                width: 40
                height: 40
                opacity: 1
            }

            PropertyChanges {
                target: image7
                x: 348
                y: 4
                width: 30
                height: 30
            }

            PropertyChanges {
                target: image8
                x: 541
                y: -24
                opacity: 1
            }

            PropertyChanges {
                target: balball3
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball4
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }
        },
        State {
            name: "playarea"
            PropertyChanges {
                target: rect
                border.width: 0
                visible: true
            }

            PropertyChanges {
                target: i1
                x: "410"
                y: "-65"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i2
                x: 220
                y: -88
                opacity: 0
                visible: false
                z: "4"
            }

            PropertyChanges {
                target: i3
                x: "448"
                y: "-59"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i4
                x: 470
                y: 151
                opacity: 0
                visible: false
                z: "4"
            }

            PropertyChanges {
                target: i5
                x: "-50"
                y: "-65"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i6
                x: "370"
                y: "65"
                visible: false
            }

            PropertyChanges {
                target: i7
                x: "206"
                y: 67
                width: 200
                opacity: 0
                visible: false
                z: "4"
            }

            PropertyChanges {
                target: i8
                x: "277"
                y: "189"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i9
                x: 112
                y: 201
                opacity: 0
                visible: false
                z: "4"
            }

            PropertyChanges {
                target: i10
                x: "400"
                y: "123"
                visible: false
            }

            PropertyChanges {
                target: i11
                x: "-50"
                y: "181"
                visible: false
            }

            PropertyChanges {
                target: i12
                x: "131"
                y: "171"
                visible: false
            }

            PropertyChanges {
                target: image1
                x: "577"
                y: "306"
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: image2
                x: "394"
                y: "13"
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: playButton
                x: 268
                y: 125
                visible: false
                smooth: false
                font.pixelSize: 33
                style: "Normal"
                font.italic: true
                scale: 1.1
                rotation: -360
                font.family: "Tekton Pro Ext"
                z: 11
                font.pointSize: 19
                horizontalAlignment: "AlignHCenter"
                opacity: 0
            }

            PropertyChanges {
                target: exitButton
                x: 170
                y: 280
                visible: false
                font.pixelSize: 33
                font.family: "Tekton Pro Ext"
                scale: 1.1
                z: 0
                opacity: 0
            }

            PropertyChanges {
                target: creditsButton
                x: 459
                y: 50
                visible: false
                font.pixelSize: 33
                font.family: "Tekton Pro Ext"
                scale: 1.1
                opacity: 0
            }

            PropertyChanges {
                target: credit_ma
                x: 0
                y: 0
                width: 159
                height: 40
                opacity: 0
            }

            PropertyChanges {
                target: level_ma
                x: -15
                y: 0
                width: 110
                height: 40
                opacity: 0
            }

            PropertyChanges {
                target: level1
                visible: false
            }

            PropertyChanges {
                target: level2
                visible: false
            }

            PropertyChanges {
                target: level3
                visible: false
            }

            PropertyChanges {
                target: b1
                visible: true
            }

            PropertyChanges {
                target: b2
                x: 394
                y: 323
                visible: true
            }

            PropertyChanges {
                target: b4
                visible: true
            }

            PropertyChanges {
                target: b3
                x: 641
                y: 281
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: b5
                x: 213
                y: 323
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: b6
                x: 641
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: balball1
                visible: false
            }

            PropertyChanges {
                target: balball2
                visible: false
            }

            PropertyChanges {
                target: rectangle4
                x: 0
                y: 0
                width: 640
                height: 30
                color: "#5e5959"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle5
                x: 0
                y: 0
                width: 100
                height: 30
                color: "#5e5959"
                opacity: 1
            }

            PropertyChanges {
                target: text10
                x: 10
                y: -1
                width: 79
                color: "#ffffff"
                text: "BACK"
                styleColor: "#cc6161"
                visible: true
                font.pixelSize: 25
                font.family: "Tekton Pro Ext"
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area1
                x: -16
                y: 3
                width: 96
                height: 26
                anchors.rightMargin: 0
                anchors.bottomMargin: -8
                anchors.leftMargin: -16
                anchors.topMargin: 3
                opacity: 1
            }

            PropertyChanges {
                target: rectangle6
                x: 94
                y: 0
                width: 400
                height: 30
                color: "#8d8999"
                opacity: 1
            }

            PropertyChanges {
                target: text_input1
                x: 0
                y: 0
                width: 225
                height: 29
                color: "#000000"
                text: ""
                z: 100
                font.pixelSize: 25
                horizontalAlignment: "AlignHCenter"
                selectionColor: "#ffffff"
                opacity: 1
            }

            PropertyChanges {
                target: text11
                x: 502
                y: -2
                color: "#ffffff"
                text: "SCORE:"
                font.family: "Tekton Pro Ext"
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: image7
                visible: false
            }

            PropertyChanges {
                target: score
                x: 605
                y: -2
                width: 58
                height: 30
                color: "#ffffff"
                text: "0"
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: hint
                x: 10
                y: 332
                width: 87
                color: "#ffffff"
                text: "HINT:"
                font.family: "Tekton Pro Ext"
                z: 1
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: rectangle7
                x: 0
                y: 330
                width: 640
                height: 30
                color: "#5e5959"
                opacity: 1
            }

            PropertyChanges {
                target: hint1
                x: 87
                y: 332
                width: 500
                height: 30
                color: "#ffffff"
                text: ""
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: image8
                visible: false
            }

            PropertyChanges {
                target: image5
                visible: false
            }

            PropertyChanges {
                target: text5
                x: 15
                y: 22
            }

            PropertyChanges {
                target: b
                visible: false
            }

            PropertyChanges {
                target: a
                visible: false
            }

            PropertyChanges {
                target: l1
                visible: false
            }

            PropertyChanges {
                target: l2
                visible: false
            }

            PropertyChanges {
                target: balball3
                visible: false
            }

            PropertyChanges {
                target: balball4
                visible: false
            }

            PropertyChanges {
                target: rectangle1
                visible: false
            }

            PropertyChanges {
                target: rectangle2
                visible: false
            }

            PropertyChanges {
                target: rectangle3
                visible: false
            }

            PropertyChanges {
                target: image6
                visible: false
            }

            PropertyChanges {
                target: resume_ma
                visible: false
            }

            PropertyChanges {
                target: image10
                visible: false
            }

            PropertyChanges {
                target: timeText
                x: 378
                y: 0
                color: "#ffffff"
                text: "TIME:"
                font.family: "Tekton Pro Ext"
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: timeValue
                x: 451
                y: -1
                color: "#ffffff"
                text: ""
                font.family: "Tekton Pro Ext"
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }

            PropertyChanges {
                target: image3
                x: 330
                y: 0
                width: 30
                height: 30
                z: 67
                opacity: 1
            }

            PropertyChanges {
                target: rectangle11
                x: 94
                y: 0
                width: 275
                height: 30
                opacity: 0.4
            }

            PropertyChanges {
                target: mouse_area10
                x: 0
                y: 0
                width: 30
                height: 30
                opacity: 1
            }

            PropertyChanges {
                target: text1
                x: 14
                y: 19
            }
        },
        State {
            name: "back"
            PropertyChanges {
                target: rect
                visible: true
            }

            PropertyChanges {
                target: i1
                x: "410"
                y: "-65"
                visible: false
                opacity: "0"
            }

            PropertyChanges {
                target: i2
                x: "220"
                y: "-88"
                visible: false
                z: "4"
                opacity: "0"
            }

            PropertyChanges {
                target: i3
                x: "448"
                y: "-59"
                visible: false
                opacity: "0"
            }

            PropertyChanges {
                target: i4
                x: "470"
                y: "151"
                visible: false
                z: "4"
                opacity: "0"
            }

            PropertyChanges {
                target: i5
                x: "-50"
                y: "-65"
                visible: false
                opacity: "0"
            }

            PropertyChanges {
                target: i6
                x: "370"
                y: "65"
                visible: false
            }

            PropertyChanges {
                target: i7
                x: "206"
                y: "64"
                width: "200"
                visible: false
                z: "4"
                opacity: "0"
            }

            PropertyChanges {
                target: i8
                x: "277"
                y: "189"
                visible: false
                opacity: "0"
            }

            PropertyChanges {
                target: i9
                x: "112"
                y: "201"
                visible: false
                z: "4"
                opacity: "0"
            }

            PropertyChanges {
                target: i10
                x: "400"
                y: "123"
                visible: false
            }

            PropertyChanges {
                target: i11
                x: "-50"
                y: "181"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i12
                x: "131"
                y: "171"
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: image1
                x: "577"
                y: "306"
                visible: false
                opacity: "0"
            }

            PropertyChanges {
                target: image2
                x: "394"
                y: "13"
                visible: false
                opacity: "0"
            }

            PropertyChanges {
                target: playButton
                x: "268"
                y: "125"
                smooth: false
                font.pixelSize: "33"
                style: "Normal"
                visible:false
                font.italic: true
                font.family: "Tekton Pro Ext"
                rotation: "-360"
                scale: "1.1"
                font.pointSize: "19"
                z: "11"
                horizontalAlignment: "AlignHCenter"
                opacity: "0"
            }

            PropertyChanges {
                target: exitButton
                x: "170"
                y: "280"
                font.pixelSize: "33"
                visible: false
                scale: "1.1"
                font.family: "Tekton Pro Ext"
                z: "0"
                opacity: "0"
            }

            PropertyChanges {
                target: creditsButton
                x: "459"
                y: "50"
                font.pixelSize: "33"
                visible: false
                scale: "1.1"
                font.family: "Tekton Pro Ext"
                opacity: "0"
            }

            PropertyChanges {
                target: credit_ma
                x: "0"
                y: "0"
                width: "159"
                height: "40"
                opacity: "0"
            }

            PropertyChanges {
                target: level_ma
                x: "-15"
                y: "0"
                width: "110"
                height: "40"
                opacity: "0"
            }

            PropertyChanges {
                target: level1
                visible: false
            }

            PropertyChanges {
                target: level2
                visible: false
            }

            PropertyChanges {
                target: level3
                visible: false
            }

            PropertyChanges {
                target: b1
                visible: false
            }

            PropertyChanges {
                target: b2
                x: 394
                y: 360
                visible: false
            }

            PropertyChanges {
                target: b4
                visible: false
            }

            PropertyChanges {
                target: b3
                x: 641
                y: 281
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: b5
                x: "206"
                y: "360"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: b6
                x: "641"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: balball1
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball2
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: rectangle4
                x: 0
                y: 0
                width: 640
                height: 30
                color: "#5e5959"
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: rectangle5
                x: 0
                y: 0
                width: 100
                height: 30
                color: "#5e5959"
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: text10
                x: 10
                y: -1
                width: 79
                color: "#ffffff"
                text: "BACK"
                font.pixelSize: 25
                visible: false
                styleColor: "#cc6161"
                font.family: "Tekton Pro Ext"
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area1
                x: -16
                y: 3
                width: 96
                height: 26
                anchors.topMargin: 3
                anchors.rightMargin: 0
                anchors.bottomMargin: -8
                anchors.leftMargin: -16
                opacity: 1
            }

            PropertyChanges {
                target: rectangle6
                x: 94
                y: 0
                width: 400
                height: 30
                color: "#8d8999"
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: text_input1
                x: 0
                y: 0
                width: 400
                height: 30
                color: "#ffffff"
                text: ""
                font.pixelSize: 25
                selectionColor: "#ffffff"
                horizontalAlignment: "AlignHCenter"
                opacity: 1
            }

            PropertyChanges {
                target: text11
                x: 502
                y: -2
                color: "#ffffff"
                text: "SCORE"
                visible: false
                font.pixelSize: 25
                font.family: "Tekton Pro Ext"
                opacity: 0
            }

            PropertyChanges {
                target: image7
                visible: false
            }

            PropertyChanges {
                target: score
                x: 605
                y: -2
                width: 58
                height: 30
                color: "#ffffff"
                text: "0"
                visible: false
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: hint
                x: 10
                y: 332
                width: 87
                color: "#ffffff"
                text: "HINT:"
                visible: false
                font.pixelSize: 25
                font.family: "Tekton Pro Ext"
                z: 1
                opacity: 0
            }

            PropertyChanges {
                target: rectangle7
                x: 0
                y: 330
                width: 640
                height: 30
                color: "#5e5959"
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: hint1
                x: 83
                y: 332
                color: "#ffffff"
                text: ""
                visible: false
                font.pixelSize: 25
                opacity: 0
            }

            PropertyChanges {
                target: image9
                x: 319
                y: 211
                opacity: 1
            }

            PropertyChanges {
                target: image10
                x: -66
                y: -137
                width: 300
                height: 300
                opacity: 1
            }

            PropertyChanges {
                target: image11
                x: 360
                y: 4
                opacity: 1
            }

            PropertyChanges {
                target: text13
                x: 67
                y: 185
                text: "BACK TO MENU"
                font.pixelSize: 26
                font.family: "MV Boli"
                opacity: 1
            }

            PropertyChanges {
                target: text14
                x: 19
                y: 36
                text: "HELP"
                visible: true
                font.family: "MV Boli"
                font.pixelSize: 23
                opacity: 1
            }

            PropertyChanges {
                target: text15
                opacity: 1
            }

            PropertyChanges {
                target: text12
                x: 51
                y: 75
                text: "RESUME"
                font.family: "MV Boli"
                font.pixelSize: 25
                z: 4
                opacity: 1
            }

            PropertyChanges {
                target: backmenu_ma
                x: -1
                y: 49
                width: 213
                height: 32
                opacity: 1
            }

            PropertyChanges {
                target: help_ma
                x: 10
                y: 36
                width: 81
                height: 29
                visible: true
                opacity: 1
            }

            PropertyChanges {
                target: resume_ma
                x: 51
                y: 75
                width: 107
                height: 32
                opacity: 1
            }

            PropertyChanges {
                target: balball4
                visible: false
            }

            PropertyChanges {
                target: balball3
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: b
                visible: false
            }

            PropertyChanges {
                target: a
                visible: false
            }

            PropertyChanges {
                target: l1
                visible: false
            }

            PropertyChanges {
                target: l2
                visible: false
            }

            PropertyChanges {
                target: rectangle1
                visible: false
            }

            PropertyChanges {
                target: rectangle2
                visible: false
            }

            PropertyChanges {
                target: rectangle3
                visible: false
            }

            PropertyChanges {
                target: image5
                visible: false
            }

            PropertyChanges {
                target: image6
                visible: false
            }

            PropertyChanges {
                target: image8
                visible: false
            }

            PropertyChanges {
                target: mouse_area3
                visible: false
            }

            PropertyChanges {
                target: noBubble
                visible: false
            }

            PropertyChanges {
                target: mouse_area2
                visible: false
            }

            PropertyChanges {
                target: yesText
                visible: false
            }

            PropertyChanges {
                target: yesBubble
                visible: false
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }
        },
        State {
            name: "exitMenu"

            PropertyChanges {
                target: balball2
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball4
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball3
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball1
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: yesBubble
                x: 182
                y: 150
                opacity: 1
            }

            PropertyChanges {
                target: noBubble
                opacity: 1
            }

            PropertyChanges {
                target: yesText
                x: 14
                y: 24
                text: "YES"
                font.bold: true
                font.family: "MV Boli"
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: noText
                x: 20
                y: 24
                text: "NO"
                font.bold: true
                font.family: "MV Boli"
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area2
                x: -13
                y: -24
                width: 78
                height: 80
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area3
                x: -19
                y: -23
                width: 80
                height: 79
                opacity: 1
            }

            PropertyChanges {
                target: text9
                x: 229
                y: 76
                text: "ARE YOU SURE?"
                font.pixelSize: 32
                font.family: "MV Boli"
                opacity: 1
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }
        },
        State {
            name: "credits"

            PropertyChanges {
                target: balball3
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball4
                visible: false
            }

            PropertyChanges {
                target: balball2
                visible: false
            }

            PropertyChanges {
                target: balball1
                visible: false
            }

            PropertyChanges {
                target: text18
                x: 32
                y: 291
                text: "BACK"
                visible: false
                font.pixelSize: 25
                font.family: "MV Boli"
                opacity: 0
            }

            PropertyChanges {
                target: backhelma
                x: -20
                y: -45
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: image13
                x: 540
                y: 260
                opacity: 1
            }

            PropertyChanges {
                target: text17
                x: 556
                y: 286
                text: "BACK"
                font.pixelSize: 25
                font.family: "MV Boli"
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area6
                x: -16
                y: -27
                opacity: 1
            }

            PropertyChanges {
                target: i8
                opacity: 0
            }

            PropertyChanges {
                target: i2
                opacity: 0
            }

            PropertyChanges {
                target: b2
                opacity: 0
            }

            PropertyChanges {
                target: i10
                opacity: 0
            }

            PropertyChanges {
                target: text5
                opacity: 0
            }

            PropertyChanges {
                target: b5
                opacity: 0
            }

            PropertyChanges {
                target: i12
                opacity: 0
            }

            PropertyChanges {
                target: i11
                opacity: 0
            }

            PropertyChanges {
                target: b1
                opacity: 0
            }

            PropertyChanges {
                target: i9
                opacity: 0
            }

            PropertyChanges {
                target: i6
                opacity: 0
            }

            PropertyChanges {
                target: i5
                opacity: 0
            }

            PropertyChanges {
                target: i3
                opacity: 0
            }

            PropertyChanges {
                target: i1
                opacity: 0
            }

            PropertyChanges {
                target: i4
                opacity: 0
            }

            PropertyChanges {
                target: rectangle10
                x: 0
                y: 0
                width: 540
                height: 360
                opacity: 1
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                opacity: 0
                visible: false
            }
        },
        State {
            name: "help"

            PropertyChanges {
                target: balball3
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball2
                visible: false
            }

            PropertyChanges {
                target: balball4
                visible: false
            }

            PropertyChanges {
                target: balball1
                visible: false
            }

            PropertyChanges {
                target: backhelma
                x: -19
                y: -40
            }

            PropertyChanges {
                target: text18
                x: 295
                y: 285
                text: "BACK"
                font.family: "MV Boli"
                font.pixelSize: 25
                opacity: 0
            }

            PropertyChanges {
                target: image14
                x: 10
                y: 105
                opacity: 1
            }

            PropertyChanges {
                target: text21
                x: 28
                y: 141
                text: "BACK"
                font.pixelSize: 25
                font.family: "MV Boli"
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area7
                x: -17
                y: -36
                opacity: 0
            }

            PropertyChanges {
                target: i2
                opacity: 0
            }

            PropertyChanges {
                target: i4
                opacity: 0
            }

            PropertyChanges {
                target: b2
                opacity: 0
            }

            PropertyChanges {
                target: i10
                opacity: 0
            }

            PropertyChanges {
                target: b5
                opacity: 0
            }

            PropertyChanges {
                target: i11
                opacity: 0
            }

            PropertyChanges {
                target: i12
                opacity: 0
            }

            PropertyChanges {
                target: i6
                opacity: 0
            }

            PropertyChanges {
                target: i9
                opacity: 0
            }

            PropertyChanges {
                target: b1
                opacity: 0
            }

            PropertyChanges {
                target: i1
                opacity: 0
            }

            PropertyChanges {
                target: i8
                opacity: 0
            }

            PropertyChanges {
                target: i5
                opacity: 0
            }

            PropertyChanges {
                target: i3
                opacity: 0
            }

            PropertyChanges {
                target: i7
                opacity: 0
            }

            PropertyChanges {
                target: mouse_area4
                x: -180
                y: -51
                opacity: 0
            }

            PropertyChanges {
                target: mouse_area6
                visible: false
            }

            PropertyChanges {
                target: mouse_area8
                x: 0
                y: 0
                opacity: 1
            }

            PropertyChanges {
                target: rectangle9
                opacity: 1
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }
        },
        State {
            name: "correct"

            PropertyChanges {
                target: balball2
                visible: false
            }

            PropertyChanges {
                target: balball1
                visible: false
            }

            PropertyChanges {
                target: balball4
                visible: false
            }

            PropertyChanges {
                target: balball3
                visible: false
            }

            PropertyChanges {
                target: text8
                x: 252
                y: 146
                text: "CORRECT"
                font.family: "MV Boli"
                font.pixelSize: 32
                opacity: 1
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }

            PropertyChanges {
                target: image4
                x: 224
                y: 64
                opacity: 1
            }
        },
        State {
            name: "wrong"
            PropertyChanges {
                target: balball2
                visible: false
            }

            PropertyChanges {
                target: balball1
                visible: false
            }

            PropertyChanges {
                target: balball4
                visible: false
            }

            PropertyChanges {
                target: balball3
                visible: false
            }

            PropertyChanges {
                target: image12
                x: 73
                y: 30
                opacity: 1
            }

            PropertyChanges {
                target: text7
                x: 117
                y: 114
                text: "WRONG"
                font.family: "MV Boli"
                font.pixelSize: 28
                opacity: 1
            }

            PropertyChanges {
                target: text16
                x: 293
                y: 111
                text: ""
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: student
                x: 95
                y: 100
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }
        },
        State {
            name: "helpmenu2"

            PropertyChanges {
                target: balball3
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: balball4
                visible: false
            }

            PropertyChanges {
                target: balball1
                visible: false
            }

            PropertyChanges {
                target: balball2
                visible: false
            }

            PropertyChanges {
                target: image15
                x: 10
                y: 105
                z: 3
                opacity: 1
            }

            PropertyChanges {
                target: text19
                x: 28
                y: 141
                text: "BACK"
                smooth: false
                font.pixelSize: 25
                font.family: "MV Boli"
                wrapMode: "WordWrap"
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area4
                x: -17
                y: -36
                opacity: 1
            }

            PropertyChanges {
                target: i8
                opacity: 0
                visible: false
            }

            PropertyChanges {
                target: i2
                opacity: 0
            }

            PropertyChanges {
                target: b2
                opacity: 0
            }

            PropertyChanges {
                target: i11
                opacity: 0
            }

            PropertyChanges {
                target: i6
                opacity: 0
            }

            PropertyChanges {
                target: b5
                opacity: 0
            }

            PropertyChanges {
                target: i10
                opacity: 0
            }

            PropertyChanges {
                target: i12
                opacity: 0
            }

            PropertyChanges {
                target: b1
                opacity: 0
            }

            PropertyChanges {
                target: i9
                opacity: 0
            }

            PropertyChanges {
                target: i1
                opacity: 0
            }

            PropertyChanges {
                target: i5
                opacity: 0
            }

            PropertyChanges {
                target: i4
                opacity: 0
            }

            PropertyChanges {
                target: i3
                opacity: 0
            }

            PropertyChanges {
                target: i7
                opacity: 0
            }

            PropertyChanges {
                target: rectangle8
                x: 102
                y: 6
                width: 500
                height: 320
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area9
                x: 0
                y: 0
                opacity: 1
            }

            PropertyChanges {
                target: student
                visible: false
            }

            PropertyChanges {
                target: text22
                visible: false
            }
        }]

    transitions: [
         Transition {
             from: "*"; to: "menu1"
             NumberAnimation {
                 properties: "x,y";
                   easing.type: Easing.InElastic;
                 duration: 1000
             }
        },

        Transition {
            from: "*"; to: "level"
            NumberAnimation {
                properties: "opacity";
                  easing.type: Easing.InElastic;
                duration: 900
            }
       }
       /* Transition {
            from: "*"; to: "State1"
            NumberAnimation {
                properties: "opacity";
                  easing.type: Easing.InElastic;
                duration: 1000
            }
       },*/
        /*Transition {
            from: "*"; to: "State2"
            NumberAnimation {
                properties: "opacity";
                  easing.type: Easing.InElastic;
                duration: 1000
            }
       }*/
    ]

    Image {
        id: btSecond
        x: -45
        y: -130
        source: "balloontitle.png"
        opacity: 0
    }

    Image {
        id: btFirst
        x: -46
        y: -130
        source: "balloontitle.png"
        opacity: 0
    }
    }
