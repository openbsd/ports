# $OpenBSD: Makefile,v 1.4 2014/01/10 20:54:27 sthen Exp $

V=		3.4.2

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking

.include <bsd.port.mk>
