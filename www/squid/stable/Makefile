# $OpenBSD: Makefile,v 1.24 2015/05/04 11:04:08 sthen Exp $

V=		3.4.13
PORTROACH=	limit:^3\.4\.*

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
