# $OpenBSD: Makefile,v 1.21 2019/07/14 00:39:38 naddy Exp $

COMMENT =		read and manipulate the MP4 container format

DISTNAME =		mp4v2-1.9.1
PKGNAME =		lib${DISTNAME}
REVISION =		6
CATEGORIES =		multimedia audio

SHARED_LIBS =		mp4v2	4.0 #1.9

HOMEPAGE =		https://github.com/sergiomb2/libmp4v2

# MPLv1.1
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://distfiles.nl/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/help2man
USE_GMAKE =		Yes
MAKE_FILE =		GNUmakefile
CONFIGURE_STYLE =	gnu

# As of mp4v2-1.9.1, the code is written for c++03, using c++>=11 causes too
# many narrowing to int issues in a roll-your-own options management, among
# others.
CXXFLAGS +=		-std=c++03

.include <bsd.port.mk>
