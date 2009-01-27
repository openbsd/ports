# $OpenBSD: Makefile,v 1.1.1.1 2009/01/27 21:32:36 kili Exp $

COMMENT =	Haskell code colourizer

V =		1.10.1
DISTNAME =	hscolour-$V
CATEGORIES =	devel

HOMEPAGE =	http://www.cs.york.ac.uk/fp/darcs/hscolour/

# GPL2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m

MODULES =	lang/ghc

MASTER_SITES =	http://hackage.haskell.org/packages/archive/hscolour/$V/ \
		ftp://ftp.cs.york.ac.uk/pub/haskell/contrib/

LIB_DEPENDS =	gmp::devel/gmp

SETUP_CONF_ARGS =	configure -g --prefix=${PREFIX}
SETUP_CONF_ENV =	HOME=${PORTHOME} ${CONFIGURE_ENV}
SETUP_PROG =		${WRKSRC}/Setup
SUBST_VARS =		MODGHC_VER V

NO_REGRESS =		Yes

do-configure:
	@cd ${WRKSRC} && ghc --make -o ${SETUP_PROG} Setup.hs
	@cd ${WRKBUILD} && exec ${SETENV} ${SETUP_CONF_ENV} \
		${SETUP_PROG} ${SETUP_CONF_ARGS}

do-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${SETUP_PROG} build

do-install:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} copy --destdir=${DESTDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKSRC}/docs && umask 022 && pax -rw hscolour ${PREFIX}/share/doc

.include <bsd.port.mk>
