# $OpenBSD: Makefile,v 1.28 2015/08/25 07:30:29 ajacoutot Exp $

PORTROACH=	limit:^3\.4\.*

V=		3.4.14
REVISION=	0

WANTLIB+=	stdc++

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
