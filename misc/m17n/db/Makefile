# $OpenBSD: Makefile,v 1.2 2019/05/20 22:15:17 naddy Exp $

COMMENT =	database for multilingual text processing library

DISTNAME =	m17n-db-${M17N_V}
GLIBC =		glibc-2.28

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${GLIBC}${EXTRACT_SUFX}:0

MASTER_SITES0 =	${MASTER_SITE_GNU:=glibc/}

BUILD_DEPENDS +=	devel/gettext,-tools

CONFIGURE_ARGS +=	--with-charmaps=${WRKDIR}/${GLIBC}/localedata/charmaps

.include <bsd.port.mk>
