
#
# (C) Tenable Network Security, Inc.
#
# This plugin text was extracted from Fedora Security Advisory 2009-5423
#

include("compat.inc");

if ( ! defined_func("bn_random") ) exit(0);
if(description)
{
 script_id(39475);
 script_version ("$Revision: 1.3 $");
script_name(english: "Fedora 9 2009-5423: openssl");
 script_set_attribute(attribute: "synopsis", value: 
"The remote host is missing the patch for the advisory FEDORA-2009-5423 (openssl)");
 script_set_attribute(attribute: "description", value: "The OpenSSL toolkit provides support for secure communications between
machines. OpenSSL includes a certificate management tool and shared
libraries which provide various cryptographic algorithms and
protocols.

-
Update Information:

Security update fixing DoS bugs in DTLS code.  CVE-2009-1377 CVE-2009-1378
CVE-2009-1379
");
 script_set_attribute(attribute: "cvss_vector", value: "CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:P");
script_set_attribute(attribute: "solution", value: "Get the newest Fedora Updates");
script_end_attributes();

 script_cve_id("CVE-2008-0891", "CVE-2008-1672", "CVE-2008-5077", "CVE-2009-1377", "CVE-2009-1378", "CVE-2009-1379");
script_summary(english: "Check for the version of the openssl package");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security, Inc.");
 script_family(english: "Fedora Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/RedHat/rpm-list");
 exit(0);
}

include("rpm.inc");

if ( rpm_check( reference:"openssl-0.9.8g-9.14.fc9", release:"FC9") )
{
 security_warning(port:0, extra:rpm_report_get());
 exit(0);
}
exit(0, "Host is not affected");
