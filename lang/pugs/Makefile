# $OpenBSD: Makefile,v 1.10 2013/07/19 07:08:22 kili Exp $

COMMENT =		Perl 6 Implementation

DISTNAME =		Pugs-6.2.13.20130611
CATEGORIES =		lang devel
HOMEPAGE =		http://pugscode.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

VMEM_WARNING =		Yes

WANTLIB =		c m ncursesw perl pthread util

MODULES =		lang/ghc converters/libiconv

# XXX nort may be wrong here, in case pugs uses ghci or ghc at runtime.
MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		devel/hs-FindBin \
			devel/hs-HsSyck>=0.44 \
			devel/hs-MetaObject>=0.0.4 \
			devel/hs-control-timeout>=0.1.2 \
			devel/hs-haskeline>=0.6.4.7 \
			devel/hs-mtl>=2.0.0.0 \
			devel/hs-network \
			devel/hs-parsec>=3.0.0.0 \
			devel/hs-pugs-DrIFT>=2.2.3.20120717 \
			devel/hs-pugs-compat>=0.0.6.20120717.204800 \
			devel/hs-random \
			devel/hs-stm>=2.1.2.1 \
			devel/hs-stringtable-atom>=0.0.4 \
			lang/hs-HsParrot>=0.0.2.20120717

.include <bsd.port.mk>
