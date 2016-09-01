# $OpenBSD: Makefile,v 1.12 2016/09/01 16:53:41 pascal Exp $

COMMENT =		downhill racing game
BROKEN-alpha =		cc1plus: error: unrecognized command line option '-std=c++11'
BROKEN-hppa =		cc1plus: error: unrecognized command line option '-std=c++11'

V =			0.7.3
DISTNAME =		etr-$V
PKGNAME =		extremetuxracer-$V

CATEGORIES =		games

HOMEPAGE =		http://sourceforge.net/projects/extremetuxracer/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU X11 c m pthread sfml-audio sfml-graphics sfml-system
WANTLIB += sfml-window

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=extremetuxracer/}
EXTRACT_SUFX =		.tar.xz

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
BUILD_DEPENDS =		archivers/unzip
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		multimedia/sfml

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

NO_TEST =		Yes

.include <bsd.port.mk>
