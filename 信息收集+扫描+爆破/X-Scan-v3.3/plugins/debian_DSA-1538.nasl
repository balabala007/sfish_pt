# This script was automatically generated from the dsa-1538
# Debian Security Advisory
# It is released under the Nessus Script Licence.
# Advisory is copyright 1997-2009 Software in the Public Interest, Inc.
# See http://www.debian.org/license
# DSA2nasl Convertor is copyright 2004-2009 Tenable Network Security, Inc.

if (! defined_func('bn_random')) exit(0);

include('compat.inc');

if (description) {
 script_id(31808);
 script_version("$Revision: 1.6 $");
 script_xref(name: "DSA", value: "1538");
 script_cve_id("CVE-2007-5301");

 script_set_attribute(attribute:'synopsis', value: 
'The remote host is missing the DSA-1538 security update');
 script_set_attribute(attribute: 'description', value:
'Erik Sj&ouml;lund discovered a buffer overflow vulnerability in the Ogg
Vorbis input plugin of the alsaplayer audio playback application.
Successful exploitation of this vulnerability through the opening of a
maliciously crafted Vorbis file could lead to the execution of
arbitrary code.
For the stable distribution (etch), the problem has been fixed in
version 0.99.76-9+etch1.
');
 script_set_attribute(attribute: 'see_also', value: 
'http://www.debian.org/security/2008/dsa-1538');
 script_set_attribute(attribute: 'solution', value: 
'The Debian project recommends that you upgrade your alsaplayer packages.');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P');
script_end_attributes();

 script_copyright(english: "This script is (C) 2009 Tenable Network Security, Inc.");
 script_name(english: "[DSA1538] DSA-1538-1 alsaplayer");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Debian Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Debian/dpkg-l");
 script_summary(english: "DSA-1538-1 alsaplayer");
 exit(0);
}

include("debian_package.inc");

if ( ! get_kb_item("Host/Debian/dpkg-l") ) exit(1, "Could not obtain the list of packages");

deb_check(prefix: 'alsaplayer-alsa', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer-common', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer-daemon', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer-esd', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer-gtk', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer-jack', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer-nas', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer-oss', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer-text', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer-xosd', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'libalsaplayer-dev', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'libalsaplayer0', release: '4.0', reference: '0.99.76-9+etch1');
deb_check(prefix: 'alsaplayer', release: '4.0', reference: '0.99.76-9+etch1');
if (deb_report_get()) security_warning(port: 0, extra:deb_report_get());
else exit(0, "Host is not affected");
