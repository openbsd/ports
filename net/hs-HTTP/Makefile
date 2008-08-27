# $OpenBSD: Makefile,v 1.1.1.1 2008/08/27 18:55:05 kili Exp $

ONLY_FOR_ARCHS=		i386 amd64

COMMENT=		client-side HTTP library for GHC

V=			3001.0.4
DISTNAME=		HTTP-$V
PKGNAME=		hs-${DISTNAME}

CATEGORIES=		net devel

HOMEPAGE=		http://www.haskell.org/http/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://hackage.haskell.org/packages/archive/HTTP/$V/

MODULES=		lang/ghc

BUILD_DEPENDS=		::devel/haddock

SETUP_CONF_ARGS=	configure -g --prefix=${PREFIX}
SETUP_CONF_ENV=		HOME=${PORTHOME} ${CONFIGURE_ENV}
SETUP_PROG=		${WRKSRC}/Setup
SUBST_VARS=		V

do-configure:
	@cd ${WRKSRC} && ghc --make -o ${SETUP_PROG} Setup.lhs
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
		${SETUP_PROG} copy -v 5 --destdir=${DESTDIR}

post-install:
	find ${PREFIX} -type f
	mv ${PREFIX}/share/${DISTNAME}/doc/html ${PREFIX}/share/doc/${DISTNAME}
	rm -rf ${PREFIX}/share/${DISTNAME}
.for f in register.sh unregister.sh
	${INSTALL_SCRIPT} ${WRKBUILD}/$f ${PREFIX}/lib/${DISTNAME}
.endfor

NO_REGRESS=	Yes

.include <bsd.port.mk>
