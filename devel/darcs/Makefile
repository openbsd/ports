# $OpenBSD: Makefile,v 1.71 2019/09/30 11:54:43 kili Exp $

USE_WXNEEDED =		Yes

COMMENT =		advanced revision control system written in Haskell

DISTNAME =		darcs-2.14.2
CATEGORIES =		devel
HOMEPAGE =		http://www.darcs.net/

WANTLIB =		c charset curl>=2 curses ffi gmp iconv m \
			pthread util z
MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage nort
MODGHC_SETUP_CONF_ARGS =-f 'curl -library' --enable-tests
LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi \
			net/curl

# Yes, build dependencies, because GHC libs are still static and we
# don't want to pull in all of ghc.
BUILD_DEPENDS =		archivers/hs-zip-archive>=0.2.3,<0.4 \
			archivers/hs-zlib>=0.6.1.2,<0.7.0.0 \
			devel/hs-async>=2.0.1.4,<2.3 \
			devel/hs-base16-bytestring>=0.1,<0.2 \
			devel/hs-data-ordlist>=0.4,<0.5 \
			devel/hs-fgl>=5.7.0.1,<5.8 \
			devel/hs-hashable>=1.1.2.5,<1.3 \
			devel/hs-mmap>=0.5.9,<0.6 \
			devel/hs-old-time>=1.1,<1.2 \
			devel/hs-random>=1.0.1.1,<1.2 \
			devel/hs-regex-applicative>=0.2,<0.4 \
			devel/hs-regex-compat-tdfa>=0.95.1,<0.96 \
			devel/hs-sandi>=0.5,<0.6 \
			devel/hs-tar>=0.4,<0.6 \
			devel/hs-transformers-compat>=0.4,<0.6 \
			devel/hs-unix-compat>=0.4.2,<0.6\
			devel/hs-utf8-string>=0.3.6,<1.1 \
			devel/hs-vector>=0.10.0.1,<0.13 \
			graphics/hs-graphviz>=2999.20.0.3,<2999.21 \
			net/hs-HTTP>=4000.2.8,<4000.4 \
			security/hs-cryptohash>=0.11,<0.12 \
			textproc/hs-attoparsec>=0.11,<0.14 \
			www/hs-html>=1.0.1.2,<1.1 \
			${RUN_DEPENDS}

# Used for building the test suite (which is done during normal
# build time, not during regress time).
BUILD_DEPENDS +=	devel/hs-cmdargs>=0.10,<0.11 \
			devel/hs-shelly>=1.8,<1.9 \
			devel/hs-split>=0.2.2,<0.3 \
			devel/hs-FindBin>=0.0,<0.1 \
			devel/hs-QuickCheck>=2.6,<2.10 \
			devel/hs-HUnit>=1.2.5.2,<1.6 \
			devel/hs-test-framework>=0.4.0,<0.9 \
			devel/hs-test-framework-hunit>=0.2.2,<0.4 \
			devel/hs-test-framework-quickcheck2>=0.3,<0.4

TEST_DEPENDS =		shells/bash

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
PERMIT_PACKAGE =	Yes

.include <bsd.port.mk>
