# $OpenBSD: Makefile,v 1.3 2013/12/10 12:09:17 sthen Exp $

V=		3.4.1

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking

.include <bsd.port.mk>
