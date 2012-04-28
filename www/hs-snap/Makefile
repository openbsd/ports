# $OpenBSD: Makefile,v 1.4 2012/04/28 19:34:09 kili Exp $

COMMENT =		Snap project starter and glue code library

DISTNAME =		snap-0.7
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

# Support dynamic project reloading via hint.
MODGHC_SETUP_CONF_ARGS =-f hint

WANTLIB +=		c gmp m pthread util z

RUN_DEPENDS +=		devel/hs-MonadCatchIO-transformers>=0.2,<0.3 \
			devel/hs-aeson>=0.4,<0.5 \
			devel/hs-cereal>=0.3,<0.4 \
			devel/hs-configurator>=0.1,<0.3 \
			devel/hs-data-lens-template>=2.1,<2.2 \
			devel/hs-data-lens>=2.0.1,<2.1 \
			devel/hs-directory-tree>=0.10,<0.11 \
			devel/hs-hashable>=1.1,<1.2 \
			devel/hs-hint>=0.3.3.1,<0.4 \
			devel/hs-logict>=0.4.2,<0.6 \
			devel/hs-mtl>2.0,<2.1 \
			devel/hs-safe>=0.3,<0.4 \
			devel/hs-stm>=2.2,<2.3 \
			devel/hs-syb>=0.1,<0.4 \
			devel/hs-text>=0.11,<0.12 \
			devel/hs-transformers>=0.2,<0.3 \
			devel/hs-unordered-containers>=0.1.4,<0.2 \
			devel/hs-vector-algorithms>=0.4,<0.6 \
			devel/hs-vector>=0.7.1,<0.10 \
			security/hs-crypto>=4.2,<4.3 \
			security/hs-mwc-random>=0.8,<0.11 \
			security/hs-pwstore-fast>=2.2,<2.3 \
			security/hs-skein>=0.1.0.3,<0.2 \
			textproc/hs-attoparsec>=0.10,<0.11 \
			textproc/hs-heist>=0.7,<0.8 \
			textproc/hs-xmlhtml>=0.1,<0.2 \
			www/hs-clientsession>=0.7.3.6,<0.8 \
			www/hs-snap-core>=0.7,<0.8 \
			www/hs-snap-server>=0.7,<0.8 \

BUILD_DEPENDS +=	${RUN_DEPENDS}

# Haddock is a memory pig on this port.
VMEM_WARNING =		Yes

# Reuse snaps minimal Setup.hs in the project templates to allow
# building a snap project with something like
# $ runghc Setup.hs configure && runghc Setup.hs build
post-extract:
.for t in barebones default tutorial
	@cp -p ${WRKSRC}/Setup.hs ${WRKSRC}/project_template/$t/Setup.hs
.endfor

.include <bsd.port.mk>
