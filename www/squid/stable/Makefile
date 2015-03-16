# $OpenBSD: Makefile,v 1.23 2015/03/16 09:16:17 sthen Exp $

V=		3.4.12
PORTROACH=	limit:^3\.4\.*

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
