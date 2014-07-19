# $OpenBSD: Makefile,v 1.15 2014/07/19 22:36:13 ajacoutot Exp $

V=		3.4.6
REVISION=	0
REVISION-main=	1

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native

.include <bsd.port.mk>
