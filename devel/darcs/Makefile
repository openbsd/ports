# $OpenBSD: Makefile,v 1.61 2015/12/29 12:54:38 kili Exp $

# Needs template Haskell in Setup.lhs, which doesn't work on i386.
NOT_FOR_ARCHS =		i386

COMMENT =		advanced revision control system written in Haskell

DISTNAME =		darcs-2.10.2

CATEGORIES =		devel
HOMEPAGE =		http://www.darcs.net/

WANTLIB =		c curl>=2 m ncursesw pthread util z
MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort
MODGHC_SETUP_CONF_ARGS =-f 'curl -http -library use-time-1point5 -test'
LIB_DEPENDS =		net/curl

# Yes, build dependencies, because GHC libs are still static and we
# don't want to pull in all of ghc.
BUILD_DEPENDS =		archivers/hs-zip-archive>=0.2.3,<0.3 \
			archivers/hs-zlib>=0.5.3.0,<0.7.0.0 \
			devel/hs-base16-bytestring>=0.1,<0.2 \
			devel/hs-data-ordlist>=0.4,<0.5 \
			devel/hs-hashable>=1.0,<1.3 \
			devel/hs-mmap>=0.5,<0.6 \
			devel/hs-mtl>=2.1,<2.3 \
			devel/hs-old-time>=1.1,<1.2 \
			devel/hs-parsec>=3.1,<3.2 \
			devel/hs-random>=1.0,<1.2 \
			devel/hs-regex-applicative>=0.2,<0.4 \
			devel/hs-regex-compat-tdfa>=0.95.1,<0.96 \
			devel/hs-sandi>=0.2,<0.4 \
			devel/hs-tar>=0.4,<0.5 \
			devel/hs-text>=0.11.2.0,<1.3 \
			devel/hs-transformers-compat>=0.4,<0.5 \
			devel/hs-unix-compat>=0.1.2,<0.5 \
			devel/hs-utf8-string>=0.3.6,<1.1 \
			devel/hs-vector>=0.7,<0.12 \
			security/hs-cryptohash>=0.4,<0.12 \
			textproc/hs-attoparsec>=0.11,<0.14 \
			www/hs-html>=1.0.1.1 \
			${RUN_DEPENDS}

# Tests Disabled for now, because of additional dependencies.
NO_TEST =		Yes

post-install:
	# Wrong directory, and wrong permissions (600):
	rm -rf ${PREFIX}/share/man
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/dist/build/darcs/darcs.1 ${PREFIX}/man/man1

	# We don't want the library nor yet another copy of the GPL
	rm -rf ${PREFIX}/lib/${DISTNAME}
	rm -rf ${PREFIX}/share/doc/${DISTNAME}

# Some of the tests rely on GNU functionality.
pre-test:
	ln -fs ${LOCALBASE}/bin/gdate ${WRKDIR}/bin/date

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

.include <bsd.port.mk>
