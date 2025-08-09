COMMENT =	database for multilingual text processing library

DISTNAME =	m17n-db-1.8.10
GLIBC =		glibc-2.41

DISTFILES.glibc=${GLIBC}${EXTRACT_SUFX}

SITES.glibc =	${SITE_GNU:=glibc/}

BUILD_DEPENDS +=	devel/gettext,-tools

CONFIGURE_ARGS +=	--with-charmaps=${WRKDIR}/${GLIBC}/localedata/charmaps

.include <bsd.port.mk>
