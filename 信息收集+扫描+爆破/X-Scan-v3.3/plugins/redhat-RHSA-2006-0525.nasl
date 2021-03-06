
#
# (C) Tenable Network Security
#
# The text of this plugin is (C) Red Hat Inc.
#

include("compat.inc");
if ( ! defined_func("bn_random") ) exit(0);

if(description)
{
 script_id(21636);
 script_version ("$Revision: 1.5 $");
 script_name(english: "RHSA-2006-0525: quagga");
 script_set_attribute(attribute: "synopsis", value: 
"The remote host is missing the patch for the advisory RHSA-2006-0525");
 script_set_attribute(attribute: "description", value: '
  Updated quagga packages that fix several security vulnerabilities are now
  available.

  This update has been rated as having moderate security impact by the Red
  Hat Security Response Team.

  Quagga manages the TCP/IP based routing protocol. It takes a multi-server
  and multi-thread approach to resolve the current complexity of the
  Internet.

  An information disclosure flaw was found in the way Quagga interprets RIP
  REQUEST packets. RIPd in Quagga will respond to RIP REQUEST packets for RIP
  versions that have been disabled or that have authentication enabled,
  allowing a remote attacker to acquire information about the local network.
  (CVE-2006-2223)

  A route injection flaw was found in the way Quagga interprets RIPv1
  RESPONSE packets when RIPv2 authentication is enabled. It is possible for a
  remote attacker to inject arbitrary route information into the RIPd routing
  tables. This issue does not affect Quagga configurations where only RIPv2
  is specified. (CVE-2006-2224)

  A denial of service flaw was found in Quagga\'s telnet interface. If an
  attacker is able to connect to the Quagga telnet interface, it is possible
  to cause Quagga to consume vast quantities of CPU resources by issuing a
  malformed \'sh\' command. (CVE-2006-2276)

  Users of Quagga should upgrade to these updated packages, which contain
  backported patches that correct these issues.


');
 script_set_attribute(attribute: "cvss_vector", value: "CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
script_set_attribute(attribute: "see_also", value: "http://rhn.redhat.com/errata/RHSA-2006-0525.html");
script_set_attribute(attribute: "solution", value: "Get the newest RedHat Updates.");
script_end_attributes();

script_cve_id("CVE-2006-2223", "CVE-2006-2224", "CVE-2006-2276");
script_summary(english: "Check for the version of the quagga packages");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security");
 script_family(english: "Red Hat Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 
 script_require_keys("Host/RedHat/rpm-list");
 exit(0);
}

include("rpm.inc");

if ( ! get_kb_item("Host/RedHat/rpm-list") ) exit(1, "Could not get the list of packages");

if ( rpm_check( reference:"quagga-0.96.2-11.3E", release:'RHEL3') )
{
 security_warning(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"quagga-0.98.3-2.4E", release:'RHEL4') )
{
 security_warning(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"quagga-contrib-0.98.3-2.4E", release:'RHEL4') )
{
 security_warning(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"quagga-devel-0.98.3-2.4E", release:'RHEL4') )
{
 security_warning(port:0, extra:rpm_report_get());
 exit(0);
}
exit(0, "Host if not affected");
