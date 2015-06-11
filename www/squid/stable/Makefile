# $OpenBSD: Makefile,v 1.26 2015/06/11 14:57:30 sthen Exp $

V=		3.4.13
REVISION=	0
PORTROACH=	limit:^3\.4\.*

WANTLIB+=	stdc++

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
