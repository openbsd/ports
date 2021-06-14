# $OpenBSD: Makefile,v 1.4 2021/06/14 10:19:47 bentley Exp $

COMMENT =		historical real-time strategy game data

DISTNAME =		0ad-${V}-alpha-unix-data
PKGNAME =		0ad-data-${V}
REVISION =		0

PKG_ARCH =		*

NO_BUILD =		Yes
NO_TEST =		Yes
EXTRACT_ONLY =

do-install:
	tar -zxf ${FULLDISTDIR}/${DISTFILES} -C ${PREFIX}/share \
		-s ",0ad-${V}-alpha/binaries/data/,0ad/,g"

.include <bsd.port.mk>
