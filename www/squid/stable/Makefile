# $OpenBSD: Makefile,v 1.29 2015/08/28 11:45:39 jca Exp $

PORTROACH=	limit:^3\.4\.*

V=		3.4.14
REVISION=	1

WANTLIB+=	stdc++

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
