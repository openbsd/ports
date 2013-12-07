# $OpenBSD: Makefile,v 1.2 2013/12/07 10:47:29 sthen Exp $

V=		3.4.0.3

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking

.include <bsd.port.mk>
