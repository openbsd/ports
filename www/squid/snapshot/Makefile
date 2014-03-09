# $OpenBSD: Makefile,v 1.6 2014/03/09 20:56:44 sthen Exp $

V=		3.4.3

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
