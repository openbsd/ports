# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:53 sthen Exp $

COMMENT =	binary newsreader supporting NZB files

VERSION =	21.0
DISTNAME =	nzbget-${VERSION}

CATEGORIES =	news

HOMEPAGE =	https://nzbget.net/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} c crypto curses m ssl xml2 z

MASTER_SITES =	https://github.com/nzbget/nzbget/releases/download/v${VERSION}/
EXTRACT_SUFX =	-src.tar.gz

# C++14
COMPILER =	base-clang ports-clang ports-gcc

RUN_DEPENDS =	archivers/unrar \
		archivers/p7zip
LIB_DEPENDS =	textproc/libxml

MAKE_FLAGS =	MAKE=${MAKE_PROGRAM}
FAKE_FLAGS =	exampleconfdir=${PREFIX}/share/examples/nzbget \
		scriptsdir=${PREFIX}/share/examples/nzbget

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libcurses-includes=/usr/include \
			--with-libcurses-libraries=/usr/lib

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/nzbget.conf

.include <bsd.port.mk>
