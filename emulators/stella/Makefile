# $OpenBSD: Makefile,v 1.23 2013/07/04 12:44:29 benoit Exp $

COMMENT =		Atari 2600 VCS emulator

DISTNAME =		stella-3.9
CATEGORIES =		emulators
DISTFILES =		${DISTNAME}-src.tar.gz

HOMEPAGE =		http://stella.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c stdc++ m z pthread SDL>=1.2 png

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=stella/}

LIB_DEPENDS =		devel/sdl \
			graphics/png

CXXFLAGS +=		-I${X11BASE}/include \
			-L${LOCALBASE}/lib
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--disable-gl

USE_GMAKE =		Yes

NO_TEST =		Yes

DOCSBASE =		${WRKDIST}/docs
HTMLDOCS =		${DOCSBASE}/*.html
HTMLGRAPHICS =		${DOCSBASE}/graphics/*.png
DOCSDIR =		${PREFIX}/share/doc/stella

do-install:
	${INSTALL_PROGRAM}	${WRKDIST}/stella ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${HTMLDOCS} ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/graphics
	${INSTALL_DATA} ${HTMLGRAPHICS} ${DOCSDIR}/graphics/

.include <bsd.port.mk>
