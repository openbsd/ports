# $OpenBSD: Makefile,v 1.3 2012/01/21 12:05:17 kili Exp $

COMMENT =		Snap project starter and glue code library

DISTNAME =		snap-0.5.3.1
REVISION =		1
CATEGORIES =		www
HOMEPAGE =		http://snapframework.com/

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		converters/libiconv \
			lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

WANTLIB +=		c gmp m pthread util z

RUN_DEPENDS +=		archivers/hs-zlib \
			devel/hs-blaze-builder \
			devel/hs-cereal \
			devel/hs-directory-tree \
			devel/hs-dlist \
			devel/hs-enumerator \
			devel/hs-hint \
			devel/hs-MonadCatchIO-transformers \
			devel/hs-mtl \
			devel/hs-text \
			devel/hs-unix-compat \
			textproc/hs-attoparsec \
			textproc/hs-heist \
			textproc/hs-bytestring-nums \
			www/hs-snap-core \
			www/hs-snap-server
BUILD_DEPENDS +=	${RUN_DEPENDS}

# Reuse snaps minimal Setup.hs in the project templates to allow
# building a snap project with something like
# $ runghc Setup.hs configure && runghc Setup.hs build
post-extract:
	@cp -p ${WRKSRC}/Setup.hs ${WRKSRC}/project_template/default/Setup.hs
	@cp -p ${WRKSRC}/Setup.hs ${WRKSRC}/project_template/barebones/Setup.hs

.include <bsd.port.mk>
