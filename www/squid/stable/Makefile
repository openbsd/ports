# $OpenBSD: Makefile,v 1.27 2015/08/11 20:47:47 sthen Exp $

V=		3.4.14
PORTROACH=	limit:^3\.4\.*

WANTLIB+=	stdc++

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
