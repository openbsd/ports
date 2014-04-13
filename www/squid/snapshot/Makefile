# $OpenBSD: Makefile,v 1.9 2014/04/13 12:38:37 sthen Exp $

BROKEN-i386=	64-bit atomic ops
# on arch where atomic ops are supported at all, squid (as of bzr rev 13201)
# needs 64-bit ops. talking to upstream.

D=		20140413-r13351
V=		3.5pre${D:C/-.*//}
DISTNAME=	squid-3.HEAD-$D
EXTRACT_SUFX=	.tar.bz2

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native \
		--enable-ssl-crtd

WANTLIB-main += nettle
WANTLIB-ntlm += nettle
WANTLIB-ldap += nettle
LIB_DEPENDS-main += security/libnettle
LIB_DEPENDS-ntlm += security/libnettle
LIB_DEPENDS-ldap += security/libnettle

.include <bsd.port.mk>
