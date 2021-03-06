# This script was automatically generated from the dsa-1438
# Debian Security Advisory
# It is released under the Nessus Script Licence.
# Advisory is copyright 1997-2009 Software in the Public Interest, Inc.
# See http://www.debian.org/license
# DSA2nasl Convertor is copyright 2004-2009 Tenable Network Security, Inc.

if (! defined_func('bn_random')) exit(0);

include('compat.inc');

if (description) {
 script_id(29805);
 script_version("$Revision: 1.4 $");
 script_xref(name: "DSA", value: "1438");
 script_cve_id("CVE-2007-4131", "CVE-2007-4476");

 script_set_attribute(attribute:'synopsis', value: 
'The remote host is missing the DSA-1438 security update');
 script_set_attribute(attribute: 'description', value:
'Several vulnerabilities have been discovered in GNU Tar. The Common
Vulnerabilities and Exposures project identifies the following problems:

CVE-2007-4131
     
     A directory traversal vulnerability enables attackers using
     specially crafted archives to extract contents outside the
     directory tree created by tar.
     
CVE-2007-4476
     
     A stack-based buffer overflow in the file name checking code may
     lead to arbitrary code execution when processing maliciously
     crafted archives.
     

For the old stable distribution (sarge), these problems have been
fixed in version 1.14-2.4.


For the stable distribution (etch), these problems have been fixed in
version 1.16-2etch1.

');
 script_set_attribute(attribute: 'see_also', value: 
'http://www.debian.org/security/2007/dsa-1438');
 script_set_attribute(attribute: 'solution', value: 
'The Debian project recommends that you upgrade your tar package.');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P');
script_end_attributes();

 script_copyright(english: "This script is (C) 2009 Tenable Network Security, Inc.");
 script_name(english: "[DSA1438] DSA-1438-1 tar");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Debian Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Debian/dpkg-l");
 script_summary(english: "DSA-1438-1 tar");
 exit(0);
}

include("debian_package.inc");

if ( ! get_kb_item("Host/Debian/dpkg-l") ) exit(1, "Could not obtain the list of packages");

deb_check(prefix: 'tar', release: '3.1', reference: '1.14-2.4');
deb_check(prefix: 'tar', release: '4.0', reference: '1.16-2etch1');
if (deb_report_get()) security_hole(port: 0, extra:deb_report_get());
else exit(0, "Host is not affected");
