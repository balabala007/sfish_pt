# This script was automatically generated from the 726-1 Ubuntu Security Notice
# It is released under the Nessus Script Licence.
# Ubuntu Security Notices are (C) 2005 Canonical, Inc.
# USN2nasl Convertor is (C) 2005 Tenable Network Security, Inc.
# See http://www.ubuntulinux.org/usn/
# Ubuntu(R) is a registered trademark of Canonical, Inc.

if (! defined_func("bn_random")) exit(0);
include('compat.inc');

if (description) {
script_id(37148);
script_version("$Revision: 1.1 $");
script_copyright("Ubuntu Security Notice (C) 2009 Canonical, Inc. / NASL script (C) 2009 Tenable Network Security, Inc.");
script_category(ACT_GATHER_INFO);
script_family(english: "Ubuntu Local Security Checks");
script_dependencies("ssh_get_info.nasl");
script_require_keys("Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

script_xref(name: "USN", value: "726-1");
script_summary(english:"curl vulnerability");
script_name(english:"USN726-1 : curl vulnerability");
script_set_attribute(attribute:'synopsis', value: 'These remote packages are missing security patches :
- curl 
- libcurl3 
- libcurl3-dbg 
- libcurl3-dev 
- libcurl3-gnutls 
- libcurl3-gnutls-dev 
- libcurl3-openssl-dev 
- libcurl4-gnutls-dev 
- libcurl4-openssl-dev 
');
script_set_attribute(attribute:'description', value: 'It was discovered that curl did not enforce any restrictions when following
URL redirects. If a user or automated system were tricked into opening a URL to
an untrusted server, an attacker could use redirects to gain access to abitrary
files. This update changes curl behavior to prevent following "file" URLs after
a redirect.');
script_set_attribute(attribute:'solution', value: 'Upgrade to : 
- curl-7.18.2-1ubuntu4.1 (Ubuntu 8.10)
- libcurl3-7.18.2-1ubuntu4.1 (Ubuntu 8.10)
- libcurl3-dbg-7.18.2-1ubuntu4.1 (Ubuntu 8.10)
- libcurl3-dev-7.15.1-1ubuntu3.1 (Ubuntu 6.06)
- libcurl3-gnutls-7.18.2-1ubuntu4.1 (Ubuntu 8.10)
- libcurl3-gnutls-dev-7.15.1-1ubuntu3.1 (Ubuntu 6.06)
- libcurl3-openssl-dev-7.15.1-1ubuntu3.1 (Ubuntu 6.06)
- libcurl4-gnutls-dev-7.18.2-1ubuntu4.1 (Ubuntu 8.10)
- libcurl4-openssl-dev-7.18.2-1ubuntu4.1 (Ubuntu 8.10)
');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P');
script_end_attributes();

script_cve_id("CVE-2009-0037");
exit(0);
}

include('ubuntu.inc');

if ( ! get_kb_item('Host/Ubuntu/release') ) exit(1, 'Could not gather the list of packages');

extrarep = NULL;

found = ubuntu_check(osver: "8.10", pkgname: "curl", pkgver: "7.18.2-1ubuntu4.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package curl-',found,' is vulnerable in Ubuntu 8.10
Upgrade it to curl-7.18.2-1ubuntu4.1
');
}
found = ubuntu_check(osver: "8.10", pkgname: "libcurl3", pkgver: "7.18.2-1ubuntu4.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libcurl3-',found,' is vulnerable in Ubuntu 8.10
Upgrade it to libcurl3-7.18.2-1ubuntu4.1
');
}
found = ubuntu_check(osver: "8.10", pkgname: "libcurl3-dbg", pkgver: "7.18.2-1ubuntu4.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libcurl3-dbg-',found,' is vulnerable in Ubuntu 8.10
Upgrade it to libcurl3-dbg-7.18.2-1ubuntu4.1
');
}
found = ubuntu_check(osver: "6.06", pkgname: "libcurl3-dev", pkgver: "7.15.1-1ubuntu3.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libcurl3-dev-',found,' is vulnerable in Ubuntu 6.06
Upgrade it to libcurl3-dev-7.15.1-1ubuntu3.1
');
}
found = ubuntu_check(osver: "8.10", pkgname: "libcurl3-gnutls", pkgver: "7.18.2-1ubuntu4.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libcurl3-gnutls-',found,' is vulnerable in Ubuntu 8.10
Upgrade it to libcurl3-gnutls-7.18.2-1ubuntu4.1
');
}
found = ubuntu_check(osver: "6.06", pkgname: "libcurl3-gnutls-dev", pkgver: "7.15.1-1ubuntu3.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libcurl3-gnutls-dev-',found,' is vulnerable in Ubuntu 6.06
Upgrade it to libcurl3-gnutls-dev-7.15.1-1ubuntu3.1
');
}
found = ubuntu_check(osver: "6.06", pkgname: "libcurl3-openssl-dev", pkgver: "7.15.1-1ubuntu3.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libcurl3-openssl-dev-',found,' is vulnerable in Ubuntu 6.06
Upgrade it to libcurl3-openssl-dev-7.15.1-1ubuntu3.1
');
}
found = ubuntu_check(osver: "8.10", pkgname: "libcurl4-gnutls-dev", pkgver: "7.18.2-1ubuntu4.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libcurl4-gnutls-dev-',found,' is vulnerable in Ubuntu 8.10
Upgrade it to libcurl4-gnutls-dev-7.18.2-1ubuntu4.1
');
}
found = ubuntu_check(osver: "8.10", pkgname: "libcurl4-openssl-dev", pkgver: "7.18.2-1ubuntu4.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libcurl4-openssl-dev-',found,' is vulnerable in Ubuntu 8.10
Upgrade it to libcurl4-openssl-dev-7.18.2-1ubuntu4.1
');
}

if (w) { security_warning(port: 0, extra: extrarep); }
else exit(0, "Host is not vulnerable");
