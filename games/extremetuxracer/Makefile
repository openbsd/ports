# $OpenBSD: Makefile,v 1.17 2017/07/27 09:55:44 sthen Exp $

COMMENT =		downhill racing game
BROKEN-alpha =		cc1plus: error: unrecognized command line option '-std=c++11'
BROKEN-hppa =		cc1plus: error: unrecognized command line option '-std=c++11'

V =			0.7.4
DISTNAME =		etr-$V
PKGNAME =		extremetuxracer-$V
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://sourceforge.net/projects/extremetuxracer/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU X11 c m pthread sfml-audio sfml-graphics sfml-system
WANTLIB += sfml-window
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=extremetuxracer/}
EXTRACT_SUFX =		.tar.xz

COMPILER =		gcc
BUILD_DEPENDS =		archivers/unzip
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		multimedia/sfml

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

NO_TEST =		Yes

.include <bsd.port.mk>
