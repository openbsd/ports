# $OpenBSD: Makefile,v 1.25 2015/05/28 10:17:25 pascal Exp $

V=		3.4.13
REVISION=	0
PORTROACH=	limit:^3\.4\.*

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
