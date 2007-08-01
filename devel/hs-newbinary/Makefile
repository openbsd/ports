# $OpenBSD: Makefile,v 1.2 2007/08/01 22:01:32 kili Exp $

COMMENT=	binary serialization library for Haskell

V=		0.1
DISTNAME=	NewBinary-${V}
PKGNAME=	hs-newbinary-${V}
CATEGORIES=	devel

HACKAGE=	http://hackage.haskell.org/
HOMEPAGE=	${HACKAGE}/cgi-bin/hackage-scripts/package/NewBinary-0.1/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# NHC style (some awfully complicated BSD like thing with the option of
# using GPL). See http://www.cs.york.ac.uk/fp/nhc98/copyright.html for
# the full blurb.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ghc

MASTER_SITES=	${HACKAGE}packages/archive/NewBinary/$V/

CONFIGURE_ARGS=	configure -g --prefix=${PREFIX}
CONFIGURE_ENV=	HOME=${PORTHOME}
SETUP_PROG=	${WRKSRC}/Setup
SUBST_VARS=	V

NO_REGRESS=	Yes

post-install:
.for f in register.sh unregister.sh
	${INSTALL_SCRIPT} ${WRKBUILD}/$f ${PREFIX}/lib/NewBinary-${V}
.endfor

do-configure:
	@cd ${WRKSRC} && ghc --make -o ${SETUP_PROG} Setup.lhs
	@cd ${WRKBUILD} && exec ${SETENV} ${CONFIGURE_ENV} \
		${SETUP_PROG} ${CONFIGURE_ARGS}

do-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} build
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} register --gen-script
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} unregister --gen-script

do-install:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} copy --destdir=${DESTDIR}

.include <bsd.port.mk>
