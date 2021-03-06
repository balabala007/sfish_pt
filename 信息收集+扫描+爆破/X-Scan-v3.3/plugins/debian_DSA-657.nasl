# This script was automatically generated from the dsa-657
# Debian Security Advisory
# It is released under the Nessus Script Licence.
# Advisory is copyright 1997-2009 Software in the Public Interest, Inc.
# See http://www.debian.org/license
# DSA2nasl Convertor is copyright 2004-2009 Tenable Network Security, Inc.

if (! defined_func('bn_random')) exit(0);

include('compat.inc');

if (description) {
 script_id(16248);
 script_version("$Revision: 1.8 $");
 script_xref(name: "DSA", value: "657");
 script_cve_id("CVE-2004-1379");
 script_bugtraq_id(11205);

 script_set_attribute(attribute:'synopsis', value: 
'The remote host is missing the DSA-657 security update');
 script_set_attribute(attribute: 'description', value:
'A heap overflow has been discovered in the DVD subpicture decoder of
xine-lib.  An attacker could cause arbitrary code to be executed on
the victims host by supplying a malicious MPEG.  By tricking users to
view a malicious network stream, this is remotely exploitable.
For the stable distribution (woody) this problem has been fixed in
version 0.9.8-2woody2.
');
 script_set_attribute(attribute: 'see_also', value: 
'http://www.debian.org/security/2005/dsa-657');
 script_set_attribute(attribute: 'solution', value: 
'The Debian project recommends that you upgrade your libxine packages.');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P');
script_end_attributes();

 script_copyright(english: "This script is (C) 2009 Tenable Network Security, Inc.");
 script_name(english: "[DSA657] DSA-657-1 xine-lib");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Debian Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Debian/dpkg-l");
 script_summary(english: "DSA-657-1 xine-lib");
 exit(0);
}

include("debian_package.inc");

if ( ! get_kb_item("Host/Debian/dpkg-l") ) exit(1, "Could not obtain the list of packages");

deb_check(prefix: 'libxine-dev', release: '3.0', reference: '0.9.8-2woody3');
deb_check(prefix: 'libxine0', release: '3.0', reference: '0.9.8-2woody3');
deb_check(prefix: 'xine-lib', release: '3.0', reference: '0.9.8-2woody2');
if (deb_report_get()) security_hole(port: 0, extra:deb_report_get());
else exit(0, "Host is not affected");
