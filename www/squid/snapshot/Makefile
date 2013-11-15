# $OpenBSD: Makefile,v 1.1 2013/11/15 19:09:17 sthen Exp $

V=		3.4.0.2

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking

.include <bsd.port.mk>
