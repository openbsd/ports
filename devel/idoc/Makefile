# $OpenBSD: Makefile,v 1.10 2010/05/06 20:05:24 kili Exp $

COMMENT =		minimalist documentation tool for Haskell

DISTNAME =		idoc-0.2.6
PKGNAME =		${DISTNAME}p3
CATEGORIES =		devel
MAINTAINER =		Matthias Kilian <kili@openbsd.org>
HOMEPAGE =		http://www.cse.unsw.edu.au/~chak/haskell/idoc/
MASTER_SITES =		${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m

# pure Haskell 98
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
WANTLIB +=		util
MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		nort
.else
BUILD_DEPENDS +=	::lang/nhc98
MAKE_FLAGS =		HC=nhc98
.endif

ALL_TARGET =
USE_GMAKE =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/idoc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/idoc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/idoc/

do-regress:
	cd ${WRKSRC}/test && ../idoc Foo.hs && /usr/bin/lynx --dump Foo.html

.include <bsd.port.mk>
