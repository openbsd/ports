# $OpenBSD: Makefile,v 1.21 2019/07/12 20:46:17 sthen Exp $

COMMENT =		downhill racing game
BROKEN-alpha =		cc1plus: error: unrecognized command line option '-std=c++11'
BROKEN-hppa =		cc1plus: error: unrecognized command line option '-std=c++11'

V =			0.7.5
DISTNAME =		etr-$V
PKGNAME =		extremetuxracer-$V

CATEGORIES =		games

HOMEPAGE =		http://sourceforge.net/projects/extremetuxracer/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU c m pthread sfml-audio sfml-graphics sfml-system
WANTLIB += sfml-window
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=extremetuxracer/}
EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		archivers/unzip
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		multimedia/sfml

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

NO_TEST =		Yes

.include <bsd.port.mk>
