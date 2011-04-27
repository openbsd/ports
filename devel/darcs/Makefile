# $OpenBSD: Makefile,v 1.41 2011/04/27 11:19:13 kili Exp $

COMMENT =		advanced revision control system written in Haskell

DISTNAME =		darcs-2.5.2
REVISION =		2

CATEGORIES =		devel
HOMEPAGE =		http://www.darcs.net/

WANTLIB =		c curl>=2 gmp m ncursesw pthread util z
MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort
MODGHC_SETUP_CONF_ARGS =-f '-library -threaded'
LIB_DEPENDS =		devel/gmp \
			net/curl

# Yes, build dependencies, because GHC libs are still static and we
# don't want to pull in all of ghc.
BUILD_DEPENDS =		hs-tar->=0.3,<0.4:devel/hs-tar \
			hs-zlib->=0.5.0,<0.6.0:archivers/hs-zlib \
			hs-hashed-storage->=0.5.2,<0.6:devel/hs-hashed-storage \
			hs-haskeline->=0.6.2.2,<0.7:devel/hs-haskeline \
			hs-mtl->=1.0,<2.1:devel/hs-mtl \
			hs-parsec->=2.0,<3.2:devel/hs-parsec \
			hs-regex-compat->=0.71,<0.94:devel/hs-regex-compat \
			hs-text->=0.3:devel/hs-text \
			hs-html->=1.0,<1.1:www/hs-html \
			${RUN_DEPENDS} \
			textproc/latex2html

REGRESS_DEPENDS =	devel/hs-hlint \
			shells/bash

# For the documentation
USE_GMAKE =		Yes
USE_GROFF =		Yes
PORTHOME =		${WRKDIR}

post-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/darcs
	cd ${WRKBUILD}/doc/manual && umask 022 && pax -rw . ${PREFIX}/share/doc/darcs
	# Wrong directory, and wrong permissions (600):
	rm -rf ${PREFIX}/share/man
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/dist/build/darcs/darcs.1 ${PREFIX}/man/man1

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.include <bsd.port.mk>
