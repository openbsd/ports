# $OpenBSD: Makefile,v 1.27 2010/04/25 21:20:45 kili Exp $

COMMENT =		advanced revision control system written in Haskell

DISTNAME =		darcs-2.4.1
PKGNAME =		${DISTNAME}p0

CATEGORIES =		devel
HOMEPAGE =		http://www.darcs.net/

WANTLIB =		c m ncurses pthread util z
MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort
LIB_DEPENDS =		curl.>=2::net/curl

# Yes, build dependencies, because GHC libs are still static and we
# don't want to pull in all of ghc.
BUILD_DEPENDS =		:hs-zlib->=0.5.0,<0.6.0:archivers/hs-zlib \
			:hs-hashed-storage-0.4.11:devel/hs-hashed-storage \
			:hs-parsec->=2.0,<3.1:devel/hs-parsec \
			:hs-regex-compat->=0.71,<0.94:devel/hs-regex-compat \
			:hs-html->=1.0,<1.1:www/hs-html \
			${RUN_DEPENDS} \
			::textproc/latex2html

# For the documentation
USE_GMAKE =		Yes

# Weird permission alert! (Hopefully fixed in the next release)
post-extract:
	@chmod -R a+r ${WRKSRC}

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
