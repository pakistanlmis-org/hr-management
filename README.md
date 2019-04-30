<img src='https://repository-images.githubusercontent.com/183605059/0cb64f00-6b79-11e9-8308-1a47a4e677d7' width='200'>


Pakistan Logistics Management Information System (LMIS) is an electronic logistics management system designed, developed and implemented indigenously to infuse efficency in Pakistan public health landscape.  The system is government owned and sustained system, providing updated and reliable supply chain data for vaccines, contraceptives and TB drugs for past more than 8 years. The application has evolved to capture real-time inventory data and product pipeline information to enable it to act as a critical supply management tool; whereby forecasting, quantification, pipeline monitoring and stock management functions are being performed by various government departments based on LMIS data. Over the years the system has started to move in to the centeral stage where multiple vertical stand alone information systems are being interfaced with it to draw consolidated information/analysis across the entire public health supply chain spectrum. 

LMIS was launched in July 2011 through USAID support. However, since then multiple donors e.g. WHO, UNICEF, GAVI, DFID and Gates Foundation have remained involved in LMIS scale-up, capacity building and data use; signifying its larger ownership not only in government but also among donors and UN agencies. 

The system is GS-1 compliant, supports threshold-based triggers/alerts as well as includes all needed supply chain features esp. pipeline and sufficiency of stocks in months of stocks, coverage, slice and dice reports and more. The system offers Zero vendor lock-in (LAMP Stack) with technical capacity available in the open market at a lower cost.  For generating user driven analytics (apart from built in reports) the system makes use of the pivot table and MS-BI 360 (Not included). This is the first step towards decoupling the modules so expect configuration glitches, however later plug and play VMs will follow. 

Support is always handy support@lmis.gov.pk 

# Human Resource Management Module
The system will capture complete life cycle of bio-data of heath department professionals. The professional or person will have following attributes to be stored are Personal Records including Name, contact info, Domicile, Date of Birth, PMDC Registration, Marital Status. It handles posting record from current and previous posts to track the carrier. It Manages designations listing, It also maintains the Educational Records with all Degrees, certificates, diplomas Percentage/CGPA. It also handles family details about the professional. It also records the professional trainings of the person 
<br><img src='https://github.com/pakistanlmis/hr-management/blob/master/upload/hr.png' width='300'>

# Configuration details
/***************************** R E A D    M E ****************************/

For successfull running the module, kindly follow these steps:

    Restore this file on your mysql server : hrkp.sql

2.Go to file : classes/database.php , and set your DB credentials in following variables : private $hostname = ""; private $username = ""; private $password = ""; private $db = '';

    Now you are all set to log in.

/***************************** You Are Ready To Use ****************************/

# Terms of Use
The MIT License (MIT)

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose, without fee, and without a written agreement is
hereby granted, provided that the above copyright notice and this paragraph and
the following paragraphs appear in all copies.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

IN NO EVENT SHALL THE GHSC-PSM DEVELOPMENT TEAM BE LIABLE TO ANY PARTY FOR
DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST
PROFITS, ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF
THE GHSC-PSM DEVELOPMENT TEAM HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

THE GHSC-PSM DEVELOPMENT TEAM SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING,
BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE. THE SOFTWARE PROVIDED HEREUNDER IS ON AN "AS IS" BASIS, AND
THE GHSC-PSM DEVELOPMENT TEAM HAS NO OBLIGATIONS TO PROVIDE MAINTENANCE, SUPPORT,
UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
