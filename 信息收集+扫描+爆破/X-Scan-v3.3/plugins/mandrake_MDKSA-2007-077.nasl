
#
# (C) Tenable Network Security
#
# This plugin text was extracted from Mandrake Linux Security Advisory ADVISORY
#

include("compat.inc");

if ( ! defined_func("bn_random") ) exit(0);
if(description)
{
 script_id(24943);
 script_version ("$Revision: 1.3 $");
 script_name(english: "MDKSA-2007:077-1: krb5");
 script_set_attribute(attribute: "synopsis", value: 
"The remote host is missing the patch for the advisory MDKSA-2007:077-1 (krb5).");
 script_set_attribute(attribute: "description", value: "A vulnerability was found in the username handling of the MIT krb5
telnet daemon. A remote attacker that could access the telnet port
of a target machine could login as root without requiring a password
(CVE-2007-0956).
Buffer overflows in the kadmin server daemon were discovered that could
be exploited by a remote attacker able to access the KDC. Successful
exploitation could allow for the execution of arbitrary code with
the privileges of the KDC or kadmin server processes (CVE-2007-0957).
Finally, a double-free flaw was discovered in the GSSAPI library used
by the kadmin server daemon, which could lead to a denial of service
condition or the execution of arbitrary code with the privileges of
the KDC or kadmin server processes (CVE-2007-1216).
Updated packages have been patched to address this issue.
Update:
Packages for Mandriva Linux 2007.1 are now available.
");
 script_set_attribute(attribute: "cvss_vector", value: "CVSS2#AV:N/AC:L/Au:S/C:C/I:C/A:C");
script_set_attribute(attribute: "see_also", value: "http://wwwnew.mandriva.com/security/advisories?name=MDKSA-2007:077-1");
script_set_attribute(attribute: "solution", value: "Apply the newest security patches from Mandriva.");
script_end_attributes();

script_cve_id("CVE-2007-0956", "CVE-2007-0957", "CVE-2007-1216");
script_summary(english: "Check for the version of the krb5 package");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security");
 script_family(english: "Mandriva Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Mandrake/rpm-list");
 exit(0);
}

include("rpm.inc");

if ( ! get_kb_item("Host/Mandrake/rpm-list") ) exit(1, "Could not get the list of packages");

if ( rpm_check( reference:"ftp-client-krb5-1.5.2-6.1mdv2007.1", release:"MDK2007.1", yank:"mdv") )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"ftp-server-krb5-1.5.2-6.1mdv2007.1", release:"MDK2007.1", yank:"mdv") )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"krb5-server-1.5.2-6.1mdv2007.1", release:"MDK2007.1", yank:"mdv") )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"krb5-workstation-1.5.2-6.1mdv2007.1", release:"MDK2007.1", yank:"mdv") )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"libkrb53-1.5.2-6.1mdv2007.1", release:"MDK2007.1", yank:"mdv") )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"libkrb53-devel-1.5.2-6.1mdv2007.1", release:"MDK2007.1", yank:"mdv") )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"telnet-client-krb5-1.5.2-6.1mdv2007.1", release:"MDK2007.1", yank:"mdv") )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"telnet-server-krb5-1.5.2-6.1mdv2007.1", release:"MDK2007.1", yank:"mdv") )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if (rpm_exists(rpm:"krb5-", release:"MDK2007.1") )
{
 set_kb_item(name:"CVE-2007-0956", value:TRUE);
 set_kb_item(name:"CVE-2007-0957", value:TRUE);
 set_kb_item(name:"CVE-2007-1216", value:TRUE);
}
exit(0, "Host is not affected");
