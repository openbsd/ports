# $OpenBSD: Makefile,v 1.4 2010/09/14 18:58:01 kili Exp $

COMMENT =		Perl 6 Implementation

DISTNAME =		Pugs-6.2.13.15
REVISION =		1
CATEGORIES =		lang devel
HOMEPAGE =		http://pugscode.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

VMEM_WARNING =		Yes

WANTLIB =		c gmp m ncursesw perl pthread util

MODULES =		lang/ghc converters/libiconv

# XXX nort may be wrong here, in case pugs uses ghci or ghc at runtime.
MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		::devel/hs-binary \
			:hs-control-timeout->=0.1.2:devel/hs-control-timeout \
			::devel/hs-FindBin \
			:hs-HsParrot->=0.0.2:lang/hs-HsParrot \
			:hs-HsSyck->=0.44:devel/hs-HsSyck \
			:hs-MetaObject->=0.0.4:devel/hs-MetaObject \
			:hs-parsec-<3.0.0:devel/hs-parsec \
			:hs-pugs-compat->=0.0.5:devel/hs-pugs-compat \
			:hs-pugs-DrIFT->=2.2.3.0:devel/hs-pugs-DrIFT \
			:hs-stringtable-atom->=0.0.4:devel/hs-stringtable-atom

LIB_DEPENDS =		::devel/gmp

.include <bsd.port.mk>
