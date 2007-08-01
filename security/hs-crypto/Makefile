# $OpenBSD: Makefile,v 1.5 2007/08/01 22:02:18 kili Exp $

COMMENT=	Haskell cryptographic library
CATEGORIES=	security

V=		3.0.3
DISTNAME=	Crypto-${V}
PKGNAME=	hs-crypto-${V}
HOMEPAGE=	http://www.haskell.org/crypto/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

MASTER_SITES=	http://hackage.haskell.org/packages/archive/Crypto/${V}/

# 3 different licenses from 3 authors: BSD, GPL, BSD-ish
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ghc
BUILD_DEPENDS+=		::devel/haddock
LIB_DEPENDS+=		::devel/hs-newbinary

SETUP_CONF_ARGS=	configure -g --prefix=${PREFIX} 
SETUP_CONF_ENV=		HOME=${PORTHOME} PATH=${PATH}
SETUP_PROG=		${WRKSRC}/Setup
SUBST_VARS=		V

do-configure:
	@cd ${WRKSRC} && ghc --make -o ${SETUP_PROG} Setup.hs
	@cd ${WRKBUILD} && exec ${SETENV} ${SETUP_CONF_ENV} \
		${SETUP_PROG} ${SETUP_CONF_ARGS}

do-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} build
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} haddock
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} register --gen-script
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} unregister --gen-script
	perl -pi -e 's!/share/${DISTNAME}/doc/html!/share/doc/${DISTNAME}!' \
		${WRKBUILD}/register.sh

do-install:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} copy --destdir=${DESTDIR}

post-install:
	mv ${PREFIX}/share/${DISTNAME}/doc/html ${PREFIX}/share/doc/${DISTNAME}
	rm -rf ${PREFIX}/share/${DISTNAME}
.for f in register.sh unregister.sh
	${INSTALL_SCRIPT} ${WRKBUILD}/$f ${PREFIX}/lib/Crypto-${V}
.endfor

do-regress:
	cd ${WRKBUILD} && exec ${SETENV} HOME=${WRKDIR} PATH=${PATH} \
		${SETUP_PROG} register --inplace --user
.for t in BERTest RSATest SymmetricTest
	cd ${WRKBUILD} && ${SETENV} HOME=${WRKDIR} \
		ghc -o $t $t.hs -package Crypto && ./$t
.endfor

.include <bsd.port.mk>
