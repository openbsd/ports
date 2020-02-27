# $OpenBSD: Makefile,v 1.11 2020/02/27 05:36:01 rsadowski Exp $

COMMENT =	Pictures collage & creativity tool

V =		1.0
DISTNAME =	Fotowall-${V}
PKGNAME =	${DISTNAME:L}
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	http://www.enricoros.com/opensource/fotowall/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

PERMIT_PACKAGE =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml c m pthread
WANTLIB += ${COMPILER_LIBCXX}

MODULES =	devel/qmake x11/qt5

LIB_DEPENDS =	x11/qt5/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils

MASTER_SITES =	https://github.com/enricoros/fotowall/releases/download/v${V}/

EXTRACT_SUFX =		-RETRO.tar.bz2
# avoid WRKDIST = ${WRKDIR}
EXTRACT_CASES= *.tar.bz2) \
        bzip2 -dc ${FULLDISTDIR}/$$archive| ${TAR} xf - -C ${WRKDIST};;

pre-extract:
	@mkdir ${WRKDIST}

pre-configure:
	@sed -i 's,/usr/,${TRUEPREFIX}/,' ${WRKSRC}/fotowall.pro
	@sed -i 's,${TRUEPREFIX}/share/man,${TRUEPREFIX}/man,' ${WRKSRC}/fotowall.pro

.include <bsd.port.mk>
