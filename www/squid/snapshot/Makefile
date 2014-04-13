# $OpenBSD: Makefile,v 1.10 2014/04/13 21:41:00 sthen Exp $

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
