# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:53 sthen Exp $

COMMENT =	log monitoring program to watch and report on log files

VERSION =	0.17
PKGNAME =	tenshi-${VERSION}
DISTNAME =	tenshi-{}${VERSION}

WRKDIST =	${WRKDIR}/${PKGNAME}

CATEGORIES =	sysutils

HOMEPAGE =	https://www.inversepath.com/tenshi.html

MAINTAINER =		Paul B. Henson <henson@acm.org>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/inversepath/tenshi/archive/

RUN_DEPENDS =		devel/p5-IO-BufferedSelect

NO_TEST =		Yes

PKG_ARCH =		*

.include <bsd.port.mk>
