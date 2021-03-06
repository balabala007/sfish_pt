# This script was automatically generated from the dsa-1441
# Debian Security Advisory
# It is released under the Nessus Script Licence.
# Advisory is copyright 1997-2009 Software in the Public Interest, Inc.
# See http://www.debian.org/license
# DSA2nasl Convertor is copyright 2004-2009 Tenable Network Security, Inc.

if (! defined_func('bn_random')) exit(0);

include('compat.inc');

if (description) {
 script_id(29808);
 script_version("$Revision: 1.4 $");
 script_xref(name: "DSA", value: "1441");
 script_cve_id("CVE-2007-6454");

 script_set_attribute(attribute:'synopsis', value: 
'The remote host is missing the DSA-1441 security update');
 script_set_attribute(attribute: 'description', value:
'Luigi Auriemma discovered that PeerCast, a P2P audio and video streaming
server, is vulnerable to a heap overflow in the HTTP server code, which
allows remote attackers to cause a denial of service and possibly execute
arbitrary code via a long SOURCE request.


The old stable distribution (sarge) does not contain peercast.


For the stable distribution (etch), this problem has been fixed in
version 0.1217.toots.20060314-1etch0.

');
 script_set_attribute(attribute: 'see_also', value: 
'http://www.debian.org/security/2007/dsa-1441');
 script_set_attribute(attribute: 'solution', value: 
'The Debian project recommends that you upgrade your peercast packages.');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C');
script_end_attributes();

 script_copyright(english: "This script is (C) 2009 Tenable Network Security, Inc.");
 script_name(english: "[DSA1441] DSA-1441-1 peercast");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Debian Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Debian/dpkg-l");
 script_summary(english: "DSA-1441-1 peercast");
 exit(0);
}

include("debian_package.inc");

if ( ! get_kb_item("Host/Debian/dpkg-l") ) exit(1, "Could not obtain the list of packages");

deb_check(prefix: 'libpeercast0', release: '4.0', reference: '0.1217.toots.20060314-1etch0');
deb_check(prefix: 'libpeercast0-dev', release: '4.0', reference: '0.1217.toots.20060314-1etch0');
deb_check(prefix: 'peercast', release: '4.0', reference: '0.1217.toots.20060314-1etch0');
deb_check(prefix: 'peercast-handlers', release: '4.0', reference: '0.1217.toots.20060314-1etch0');
deb_check(prefix: 'peercast-servent', release: '4.0', reference: '0.1217.toots.20060314-1etch0');
if (deb_report_get()) security_hole(port: 0, extra:deb_report_get());
else exit(0, "Host is not affected");
