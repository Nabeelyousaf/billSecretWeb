import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/color_constant.dart';
import '../widgets/customButton.dart';
import 'home.dart';

class TermConditionScreen extends StatelessWidget {
  const TermConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.kprimeryColor,
        leading: SizedBox(),
        title: const Text(
          "Terms And Conditions",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "The BillSecret User Agreement comprises these Terms of Service (“Terms”) our Privacy Policy, the BillSecret Rules and all incorporated policies.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "I. BillSecret TERMS of SERVICE",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "II. BillSecret PRIVACY POLICY",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "III. BillSecret RULES",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("BillSecret Terms of Service"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "These Terms of Service (“Terms”) govern your access to and use of our Services,including our various websites, SMS, APIs, email notifications, applications, buttons, widgets, ads, commerce services (the “BillSecret Services”), and ourother covered services that link to these Terms (collectively, the “Services”), and any information, text, graphics, photos or other materialsuploaded, downloaded or appearing on the Services (collectively referred to as “Content”). Your access to and use of the Services are conditioned on your acceptance of and compliance with these Terms. By accessing or using the Services you agree to be bound by these Terms.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "1. Basic Terms",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "2. Privacy",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "3. Passwords",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "4. Content on the Services",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "4. Content on the Services",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "5. Your Rights",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "6. Your License To Use the Services",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "7. BillSecret Rights",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "8. Restrictions on Content and Use of the Services",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "9. Copyright Policy",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "10. Ending These Terms",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "11.Disclaimers and Limitations of Liability",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "    A. The Services are Available “AS IS”",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "    B. Links",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "    C. Limitation of Liability",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "12. General Terms",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "    A. Waiver and Severability",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "    B. Controlling Law and Jurisdiction",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "    C. Entire Agreement",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("1. Basic Terms"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "You are responsible for your use of the Services, for any Content you post to theServices, and for any consequences thereof. Most Content you submit, post, ordisplay through the BillSecret Services is public by default and will be able to be viewed by other users and through third party services and websites. Learn morehere, and go to the account settings page to control who sees your Content.You should only provide Content that you are comfortable sharing with othersunder these Terms.Tip: What you say on the BillSecret Services may be viewed all around the world instantly. You are what you Message!You may use the Services only if you can form a binding contract with BillSecretand are not a person barred from receiving services under the laws of the United States or other applicable jurisdictions. If you are accepting these Terms and using the Services on behalf of a company, organization, government, or other legal entity, you represent and warrant that you are authorized to do so. You may use the Services only in compliance with these Terms and all applicable local, state, national, and international laws, rules and regulations. The Services that BillSecret provides are always evolving and the form and nature The Services that BillSecret provides are always evolving and the form and nature notice to you. In addition, BillSecret may stop (permanently or temporarily) providing the Services (or any features within the Services) to you or to users generally and may not be able to provide you with prior notice. We also retain the right to create limits on use and storage at our sole discretion at any time without prior notice to you. The Services may include advertisements, which may be targeted to the Content or information on the Services, queries made through the Services, or any other information. The types and extent of advertising by BillSecret on the Services are subject to change. In consideration for BillSecret granting you access to and use of the Services, you agree that BillSecret and its third party providers and partners may place such advertising on the Services or in connection with the display of Content or information from the Services whether submitted by you or others.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("2. Privacy"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Any information that you or other users provide to BillSecret is subject to our Privacy Policy, which governs our collection and use of your information. You understand that through your use of the Services you consent to the collection and use (as set forth in the Privacy Policy) of this information, including the transfer of this information to the United States, Ireland, and/or other countries for storage, processing and use by BillSecret. As part of providing you the Services, we may need to provide you with certain communications, such as service announcements and administrative messages. These communications are considered part of the Services and your account, which you may not be able to opt out from receiving. Tip: You can control most communications from the BillSecret Services, including notifications about activity related to you, your Messages, Remessages, and network, and updates from BillSecret. Please see your settings for email and mobile notifications for more.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("3. Passwords"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "You are responsible for safeguarding the password that you use to access the Services and for any activities or actions under your password. We encourage you to use “strong” passwords (passwords that use a combination of upper and lower case letters, numbers and symbols) with your account. BillSecret cannot and will not be liable for any loss or damage arising from your failure to comply with the above.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("4. Content on the Services"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "All Content, whether publicly posted or privately transmitted, is the sole responsibility of the person who originated such Content. We may not monitor or control the Content posted via the Services and, we cannot take responsibility for such Content. Any use or reliance on any Content or materials posted via the Services or obtained by you through the Services is at your own risk We do not endorse, support, represent or guarantee the completeness,truthfulness, accuracy, or reliability of any Content or communications posted via the Services or endorse any opinions expressed via the Services. You understand that by using the Services, you may be exposed to Content that might be offensive, harmful, inaccurate or otherwise inappropriate, or in some cases, postings that have been mislabeled or are otherwise deceptive. Under no circumstances will BillSecret be liable in any way for any Content, including, but not limited to, any errors or omissions in any Content, or any loss or damage of any kind incurred as a result of the use of any Content posted, emailed, transmitted or otherwise made available via the Services or broadcast elsewhere.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("5. Your Rights"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "You retain your rights to any Content you submit, post or display on or through the Services. By submitting, posting or displaying Content on or through the Services, you grant us a worldwide, non exclusive, royalty free license (with the right to sublicense) to use, copy, adapt, modify, reproduce, process, publish,transmit, display and distribute such Content in any and all media or distribution methods (now known or later developed).Tip: This license is you authorizing us to make your Messages on the BillSecret Services available to the rest of the world and to let others do the same.You agree that this license includes the right for BillSecret to provide, promote, and improve the Services and to make Content submitted to or through the Services available to other companies, organizations or individuals who partne with BillSecret for the broadcast, distribution, syndication, or publication of such Content on other media and services, subject to our terms and conditions for such Content use. What’s yours is yours – you own your Content (and your photos are part of that Content). By using the BillSecret app, you recognize, acknowledge and agree that",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("6. Your License To Use the Services"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "BillSecret gives you a personal, royalty free, worldwide, non-exclusive and non-assignable license to use the software that is provided to you by BillSecret as part of the Services. This license is for the sole purpose of enabling you to use and enjoy the benefits associated with the Services as provided by BillSecret, in the manner permitted by these Terms.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("7. BillSecret Rights"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "All right, title, and interest in and to the Services (excluding Content provided by users) are and will remain the exclusive property of BillSecret and its licensors.The Services are protected by copyright, trademark, and other laws of both the United States and foreign countries. Nothing in the Terms gives you a right to use the BillSecret name or any of the BillSecret trademarks, domain names, logos,and other distinctive brand features. Any feedback, comments, or suggestions you may provide regarding BillSecret, or the Services is entirely voluntary and we will be free to use such feedback, suggestions, comments or as we see fit and without any obligation to you. BillSecret has the right to insert a non-user-inserted affiliate link into the rotation and receive and own the profit gained thereby. ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading(
                  "8. Restrictions on Content and Use of the Services"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Please review the BillSecret Rules (which are part of these Terms) to better understand what is prohibited on the BillSecret Services. We reserve the right at all times (but will not have an obligation) to remove or refuse to distribute any Content on the Services, to suspend or terminate users, and to reclaim usernames without liability to you. We also reserve the right to access, read,preserve, and disclose any information as we reasonably believe is necessary to (i) satisfy any applicable law, regulation, legal process or governmental request,(ii) enforce the Terms, including investigation of potential violations hereof,(iii) detect, prevent, or otherwise address fraud, security or technical issues, (iv) respond to user support requests, or (v) protect the rights, property or safety of BillSecret, its users and the public. Tip: BillSecret does not disclose personally identifying information to third parties except according to our Privacy Policy. If you use commerce features of the BillSecret Services that require credit or debit card information, such as our Buy Now feature, you agree to our BillSecret Commerce Terms.You may not do any of the following while accessing or using the Services: (i) access, tamper with,or use non-public areas of the Services, BillSecret’s computer systems, or the technical delivery systems of BillSecret’s providers; (ii) probe,scan, or test the vulnerability of any system or network or circumvent or breach any security or authentication measures; (iii) access or search or attempt to access or search the Services by any means (automated or otherwise) other than through our currently available, published interfaces that are provided by BillSecret (and only pursuant to the applicable terms and conditions), unless you have been specifically allowed to do so in a separate agreement with BillSecret.(NOTE: crawling the Services is permissible if done in accordance with the provisions of the robots.txt file, however, scraping the Services without the prior consent of BillSecret is expressly prohibited); (iv) forge any TCP/IP packet header or any part of the header information in any email or posting, or in any way use the Services to send altered, deceptive or false source identifying information; or (v) disrupt or interfere with, (or attempt to do so), the access of any user, host or network, including, without limitation, sending a virus, overloading, mail bombing, flooding, spamming, the Services, or by scripting the creation of Content in such a manner as to interfere with or create an undue burden on the Services.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("9. Copyright Policy"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "BillSecret respects the intellectual property rights of others and expects users of the Services to do the same also. We will respond to notices of alleged copyright infringement that comply with applicable law and are properly provided to us. If you believe that your Content has been copied and constitutes copyright infringement, please provide us with the following information: (i) a physical or electronic signature of the copyright owner or a person authorized to act on their behalf; (ii) Identification of the copyrighted work claimed to have been infringed; (iii) Identification of the material that is claimed to be infringing or to be the subject of infringing activity and that is to be removed or access to which is to be disabled, and information reasonably sufficient to permit us to locate the material; (iv) your contact information, including your address, telephone number, and an email address; (v) a statement by you that you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law; and (vi) a statement that the information in the notification is accurate, and, under penalty of perjury, that you are authorized to act on behalf of the copyright owner.We reserve the right to remove Content alleged to be infringing without prior notice, at our sole discretion, and without liability to you.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("10. Ending These Terms"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "The Terms will continue to apply until terminated by either you or BillSecret as follows.You may end your legal agreement with BillSecret for any or no reason by deleting the app and discontinuing your use of the Services. You do not need to specifically inform BillSecret when you stop using the Services. If you stop using the Services without deleting the app your accounts may be deactivated due to prolonged inactivity under our Inactive Account Policy We may suspend or cease providing you with all or part of the Services at any time for any or no reason, including, but not limited to, if we reasonably believe: (i) you have violated these Terms or the BillSecret Rules, (ii) you create risk or possible legal exposure for us; or (iii) our provision of the Services to you is no longer commercially viable. We will make reasonable efforts to notify you by the email address associated with your account or the next time you attempt to access your account. In all such cases, the Terms shall terminate, including, without limitation, your license to use the Services, except that the following sections shall continue to apply: 4, 5, 7, 8, 10, 11, and 12. Nothing in this section shall affect BillSecret’s rights to change, limit or stop the provision of the Services without prior notice, as provided above in section 1.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("11.Disclaimers and Limitations of Liability"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Please take the time to read this section carefully since it limits the liability of BillSecret and its subsidiaries, parents, affiliates, related companies, officers, directors, employees, partners, agents, representatives, and licensors (collectively, the “BillSecret Entities”). Each of the subsections below only applies up to the maximum extent permitted under applicable law. Some jurisdictions do not allow the disclaimer of limitation of liability or implied warranties in contracts, and as a result the contents of this section may not apply to you. Nothing in this section is intended to limit any rights you may have which may not be lawfully limited.  A. The BillSecret Services are Available “AS IS” Your access to and use of the Services or any Content are at your own risk. You understand and agree that the Services are provided to you on an “AS IS” and AS AVAILABLE” basis. Without limiting the foregoing, to the maximum extent permitted under applicable law, THE BillSecret ENTITIES DISCLAIM ALL WARRANTIES AND CONDITIONS, WHETHER EXPRESS OR IMPLIED, OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON INFRINGEMENT.The BillSecret Entities make no warranty or representation and disclaim all responsibility and liability for: (i) the completeness, accuracy, availability,timeliness, security or reliability of the Services or any Content; (ii) any harm to your computer system, loss of data, or other harm that results from your access to or use of the Services or any Content; (iii) the deletion of, or the failure to store or to transmit, any Content and other communications maintained by the Services; and (iv) whether the Services will meet your requirements or be available on an uninterrupted, secure, or error free basis.No advice or information, whether oral or written, obtained from the BillSecret Entities or through the Services, will create any warranty or representation not expressly made herein. B. Links The Services may contain links to third party websites or resources. You acknowledge and agree that the BillSecret Entities are not responsible or liable for: (i) the availability or accuracy of such OF THE POSSIBILITY OF ANY SUCH DAMAGE, AND EVEN IF A REMEDY SET FORTH HEREIN IS FOUND TO HAVE FAILED OF ITS ESSENTIAL PURPOSE.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("12. General Terms"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "A. Waiver and Severability The failure of BillSecret to enforce any right or provision of these Terms will not be deemed a waiver of such right or provision. In the event that any provision of these Terms is held to be unenforceable or invalid, then that provision will be limited or eliminated to the minimum extent necessary, and the remaining provisions of these Terms will remain in full force and effect. B. Controlling Law and Jurisdiction These Terms and any action related thereto will be governed by the laws of the State of Texas without regard to or application of its conflict of law provisions or your state or country of residence. All claims, legal proceedings or litigation arising in connection with the Services  will be brought solely in the federal or state courts located in Harris County, Texas, United States, and you consent to the jurisdiction of and venue in such courts and waive any objection as to inconvenient forum.If you are a federal, state, or local government entity in the United States using the Services in your official capacity and legally unable to accept the controlling law, jurisdiction or venue clauses above, then those clauses do not apply to you. For such U.S. federal government entities, these Terms and any action related thereto will be governed by the laws of the United States of America (withoutreference to conflict of laws) and, in the absence of federal law and to the extent permitted under federal law, the laws of the State of California (excluding choice of law). C. Entire Agreement These Terms, including the BillSecret Rules for the BillSecret Services, and our Privacy Policy are the entire and exclusive agreement between BillSecret and you regarding the Services (excluding any services for which you have a separate agreement with BillSecret that is explicitly in addition or in place of these Terms), and these Terms supersede and replace any prior agreements between BillSecret and you regarding the Services. Other than members of the group of companies of which BillSecret, Inc. is the parent, no other person or company will be third party beneficiaries to the Terms. We may revise these Terms over time, the most current version will always be atBillSecret.app/tos. If the revision, in our sole discretion, is material we will notify you via an @BillSecret update or e mail to the email associated with your account. By continuing to access or use the Services after those revisions become effective, you agree to be bound by the revised Terms.Whether you live in the United States or outside the United States, these Terms are an agreement between you and BillSecret, Invet2win LLC 8880 Bellaire Houston, Texas 77036 U.S.A.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("BillSecret Privacy Policy"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Our Services instantly connect people with great products. other websites.Tip: What you say on the BillSecret Services may be viewed all around the world instantly. This Privacy Policy (“Policy”) describes how and when BillSecret collects, uses and shares your information when you use our Services. BillSecret does not receive your information as it tries to be as light weight as possible while providing great services (the “BillSecret Services”), However, when using any of our Services you consent to the collection, transfer, storage, disclosure, and use of your information in an effort to improve the service in this Privacy Policy.Regardless of which country you live in, you authorize BillSecret to use your information in, and as a result to transfer it to and store it in, the United States, and any other country where we operate. Privacy and data protection laws in some of these countries may vary from the laws in the country where you live.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("Information Collection and Use"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Basic Account Information: When you create or reconfigure an account, you provide some personal information, such as your name, username, password, email address, or phone number. On the BillSecret Services, your name and username are listed publicly, including on your profile page and in search results, and you can use either your real name or make a fictitious one up.Contact Information: You may use your contact information, such as your email address or phone number, to customize your account or enable Services, for example, for login verification,fraud, or abuse, and to help others find your account, including through third Additional Information: You may provide us with profile information to make public on the BillSecret Services, such as a short biography, your location, your website, date of birth, or a picture. ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("Information Sharing and Disclosure"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Tip: We do not disclose your private personal information except in the limited circumstances described here.User Consent or Direction: We may share or disclose your information at your direction, such as when you authorize a third party web client or application to access your account. Other users may share or disclose information about you, such as when they mention you, share a photo of you, or tag you in a photo. If you’ve shared information, like direct messages or protected Messages, with another user who accesses the BillSecret Services through a third party service, keep in mind that the information may be shared with the third party service.Service Providers: We engage service providers to perform functions and provide services to us in the United States, Ireland, and other countries. We may share your private personal information with such service providers subject to obligations consistent with this Privacy Policy and any other appropriate confidentiality and security measures, and on the condition that the third parties use your private personal data only on our behalf and pursuant to our instructions.We share your Payment Information with payment services providers to process payments; prevent, detect and investigate fraud or other prohibited activities; facilitate dispute resolution such as chargebacks or refunds; and for other purposes associated with the acceptance of credit or debit cards.Commerce Transactions: If you make a payment as part of a commerce transaction through our Services, we may provide the seller, commerce provider, marketplace or charity with your name, email address, shipping address, Payment Information and Transaction Data to facilitate payment processing, order fulfilment and dispute resolution (including payment and shipping disputes) and to help prevent, detect and investigate fraud or other prohibited activities. Please refer to these third parties’ privacy policies for information about their privacy practices.Law and Harm: Notwithstanding anything to the contrary in this Policy, we may preserve or disclose your information if we believe that it is reasonably necessary to comply with a law, regulation, legal process, or governmental request; to protect the safety of any person; to address fraud, security or technical issues; or to protect BillSecret’s rights or property. However, nothing in this Privacy Policy is intended to limit any legal defenses or objections that you may have to a third party’s, including a government’s, request to disclose your information.Business Transfers and Affiliates: In the event that BillSecret is involved in a bankruptcy, merger, acquisition, reorganization or sale of assets, your information may be sold or transferred as part of that transaction. This Privacy Policy will apply to your information as transferred to the new entity. We may also disclose information about you to our corporate affiliates in order to help provide, understand, and improve our Services and our affiliates’ services, including the delivery of ads.Non Private or Non Personal Information: We may share or disclose your non private, aggregated or otherwise non personal information, such as your public user profile information, public Messages, the people you follow or that follow you, or the number of users who clicked on a particular link (even if only one did), or reports to advertisers about unique users who saw or clicked on their ads after we have removed any private personal information (such as your name or contact information).",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading(
                  "Accessing and Modifying Your Personal Information"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "If you are a registered user of our Services, we provide you with tools and account settings to access, correct, delete, or modify the personal information you provided to us and associated with your account. You can download certain account information, including your Messages, by following the instructions here and request access to additional information here.You can also permanently delete your BillSecret account. If you follow the instructions here, your account will be deactivated and then deleted. When your account is deactivated, it is not viewable on BillSecret.com. For up to 30 days after deactivation it is still possible to restore your account if it was accidentally or wrongfully deactivated. Absent a separate arrangement between you and BillSecret to extend your deactivation period, after 30 days, we begin the process of deleting your account from our systems, which can take up to a week.Keep in mind that search engines and other third parties may still retain copies of your public information, like your user profile information and public Messages, even after you have deleted the information from the BillSecret Services or deactivated your account. Learn more here.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("Our Policy Towards Children"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Our Services are not directed to persons under 16. If you become aware that your child has provided us with personal information without your consent, please contact us. We do not knowingly collect personal information from children under 16. If we become aware that a child under 16 has provided us with personal information, we take steps to remove such informationand terminate the child’s account. Changes to this PolicyWe may revise this Privacy Policy at anytime. The most current version of the policy will govern our use of your information. If we make a change to this policy that, in our sole discretion, is material, we will notify you via an email to the email address associated with your account. By continuing to access or use the Services after those changes become effective, you agree to be bound by the revised version.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("The BillSecret Rules"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We believe that everyone should have the power to create and share ideas and information instantly, without barriers. In order to protect the experience and safety of people who use BillSecret, there are some limitations on the type of content and behavior that we allow. All users must adhere to the policies set forth in the BillSecret Rules. Failure to do so may result in the temporary locking and/or permanent suspension of account(s).Please note that we may need to change these rules at times and reserve the right to do so. The most current version will always be available at BillSecret.com/rules.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("Content Boundaries and Use of BillSecret"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "In order to provide the BillSecret service and the ability to communicate and stay connected with others, there are some limitations on the type of content that can be published with BillSecret.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Copyright: We will respond to clear and complete notices of alleged copyright infringement. Our copyright procedures are set forth in the Terms of Service.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Graphic content: You may not use pornographic or excessively violent media in your profile image, header image, or background image. BillSecret may allow some forms of graphic content in Messages marked as sensitive media. When content crosses the line into gratuitous images of death, BillSecret may ask that you remove the content out of respect for the deceased.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Unlawful use: You may not use our service for any unlawful purposes or in furtherance of illegal activities. International users agree to comply with all local laws regarding online conduct and acceptable content.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("Abusive Behavior"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We believe in freedom of expression and in speaking truth to power, but that means little as an underlying philosophy if voices are silenced because people are afraid to speak up. In order to ensure that people feel safe expressing diverse opinions and beliefs, we do not tolerate behavior that crosses the line into abuse, including behavior that harasses, intimidates, or uses fear to silence another user’s voice.Any accounts and related accounts engaging in the activities specified below may be temporarily locked and/or subject to permanent suspension.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Violent threats (direct or indirect): You may not make threats of violence or promote violence, including threatening or promoting terrorism.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Harassment: You may not incite or engage in the targeted abuse or harassment of others. Some of the factors that we may consider when evaluating abusive behavior include:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Harassment: You may not incite or engage in the targeted abuse or harassment of others. Some of the factors that we may consider when evaluating abusive behavior include:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customheading("Spam"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We strive to protect people on BillSecret from technical abuse and spam. Any accounts engaging in the activities specified below may be temporarily locked or subject to permanent suspension.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Username squatting: You may not engage in username squatting. Accounts that are inactive for more than six months may also be removed without further notice. Some of the factors we take into consideration when determining what conduct is considered to be username squatting are:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ the number of accounts created",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ creating accounts for the purpose of preventing others from using those account name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ creating accounts for the purpose of selling those accounts; and",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ using feeds of third party content to update and maintain accounts under the names of those third parties.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Invitation spam: You may not use BillSecret.com's address book contact import to send repeat, mass invitations.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Selling usernames: You may not buy or sell BillSecret usernames.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "● Malware/Phishing: You may not publish or link to malicious content intended to damage or disrupt another person’s browser or computer or to compromise a person’s privacy.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "Spam: You may not use the BillSecret service for the purpose of spamming anyone. What constitutes “spamming” will evolve as we respond to new tricks and tactics by spammers. Some of the factors that we take into account when determining what conduct is considered to be spamming are:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if you have followed and/or unfollowed large amounts of accounts in a short time period, particularly by automated means (aggressive following or follower churn);",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if you repeatedly follow and unfollow people, whether to build followers or to garner more attention for your profile;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if your updates consist mainly of links, and not personal updates;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if a large number of people are blocking you;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if a large number of spam complaints have been filed against you;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if you post duplicate content over multiple accounts or multiple duplicate updates on one account;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if you post multiple unrelated updates to a topic using #, trending or popular topic,or promoted trend;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if you send large numbers of duplicate replies or mentions;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if you add a large number of unrelated users to lists;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if you repeatedly create false or misleading content;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "if you are randomly or aggressively following, liking, or Remessageing Messages;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "if you repeatedly post other people’s account information as your own (bio,Messages, URL, etc.);",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "if you repeatedly post other people’s account information as your own (bio,Messages, URL, etc.);",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "if you post misleading links (e.g. affiliate links, links to malware/clickjacking pages, etc.);",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if you are creating misleading accounts or account interactions;",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "○ if you are selling or purchasing account interactions (such as selling or purchasing followers, Remessages, likes, etc.); andSee our support articles on Following rules and best practices and Automation rules and best practices for more detailed information about how the Rules apply to those particular account behaviors. Accounts created to replace suspended accounts will be permanently suspended.Accounts under investigation may be removed from search for quality. BillSecret reserves the right to immediately terminate your account without further notice in the event that, in its judgment, you violate these Rules or the Terms of Service.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: CustomButton(
                      text: "Agree",
                      onTap: () async {
                        SharedPreferences pref =
                            await SharedPreferences.getInstance();
                        pref.setBool("agreement", true);

                        // ignore: use_build_context_synchronously
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => MyHomePage()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: CustomButton(
                      text: "Disagree",
                      onTap: () {
                        SystemNavigator.pop();
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Text customheading(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
