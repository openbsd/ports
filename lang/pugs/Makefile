# $OpenBSD: Makefile,v 1.9 2013/03/11 11:20:28 espie Exp $

BROKEN =		overlapping instances with hs-parsec >= 3.0
COMMENT =		Perl 6 Implementation

DISTNAME =		Pugs-6.2.13.15
REVISION =		3
CATEGORIES =		lang devel
HOMEPAGE =		http://pugscode.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

VMEM_WARNING =		Yes

WANTLIB =		c m ncursesw perl pthread util

MODULES =		lang/ghc converters/libiconv

# XXX nort may be wrong here, in case pugs uses ghci or ghc at runtime.
MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		devel/hs-binary \
			devel/hs-control-timeout>=0.1.2 \
			devel/hs-FindBin \
			lang/hs-HsParrot>=0.0.2 \
			devel/hs-HsSyck>=0.44 \
			devel/hs-MetaObject>=0.0.4 \
			devel/hs-parsec<3.0.0 \
			devel/hs-pugs-compat>=0.0.5 \
			devel/hs-pugs-DrIFT>=2.2.3.0 \
			devel/hs-stringtable-atom>=0.0.4

.include <bsd.port.mk>
