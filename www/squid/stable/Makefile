# $OpenBSD: Makefile,v 1.5 2014/04/09 19:47:51 sthen Exp $

V=		3.4.4
REVISION=	0

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
