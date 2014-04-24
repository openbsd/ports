# $OpenBSD: Makefile,v 1.13 2014/04/24 14:26:21 sthen Exp $

D=		20140413-r13351
V=		3.5pre${D:C/-.*//}
DISTNAME=	squid-3.HEAD-$D
REVISION=	1
EXTRACT_SUFX=	.tar.bz2

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native \
		--enable-ssl-crtd

.include <bsd.port.mk>
