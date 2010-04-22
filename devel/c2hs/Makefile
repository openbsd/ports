# $OpenBSD: Makefile,v 1.11 2010/04/22 21:45:07 kili Exp $
# $FreeBSD: ports/devel/hs-c2hs/Makefile,v 1.20 2004/03/25 08:29:28 obraun Exp $

COMMENT=		interface generator for Haskell to C bindings

BROKEN=			CLDouble missing in GHC

V=			0.15.0
DISTNAME=		c2hs-${V}
CATEGORIES=		devel
MAINTAINER=		Matthias Kilian <kili@openbsd.org>
HOMEPAGE=		http://www.cse.unsw.edu.au/~chak/haskell/c2hs/
MASTER_SITES=		${HOMEPAGE}
MASTER_SITES0=		http://openbsd.dead-parrot.de/distfiles/
DISTFILES=		${DISTNAME}.tar.gz \
			${DISTNAME}-doc.tgz:0 \
			${DISTNAME}-tests.tgz:0

MODULES=		lang/ghc
MODGHC_RUNTIME=		No

SETUP_CONF_ARGS=	configure -g --prefix=${PREFIX}
SETUP_CONF_ENV=		HOME=${PORTHOME} ${CONFIGURE_ENV}
SETUP_PROG=		${WRKSRC}/Setup
SUBST_VARS=		V


# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

LIB_DEPENDS=		gmp::devel/gmp

BUILD_DEPENDS=		::devel/alex ::devel/happy ::textproc/sgmlformat

do-configure:
	@cd ${WRKSRC} && ghc --make -o ${SETUP_PROG} Setup.hs
	@cd ${WRKBUILD} && exec ${SETENV} ${SETUP_CONF_ENV} \
		${SETUP_PROG} ${SETUP_CONF_ARGS}

do-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${SETUP_PROG} build

post-build:
	@cd ${WRKSRC}/doc/c2hs && \
		sed 's!@VERSION@!$V!g;s!@DOCDIR@!${PREFIX}/share/doc/c2hs!g' \
			man1/c2hs.1.in > man1/c2hs.1 && \
		sgmlfmt -f html c2hs.sgml

do-install:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} copy --destdir=${DESTDIR}

post-install:
	@cd ${WRKSRC}/doc/c2hs && \
		${INSTALL_MAN} man1/c2hs.1 ${PREFIX}/man/man1
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/c2hs
	@${INSTALL_DATA} ${WRKSRC}/doc/c2hs/*.html ${PREFIX}/share/doc/c2hs
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/c2hs/lib
	@${INSTALL_DATA} ${WRKSRC}/doc/c2hs/lib/*.hs \
		${PREFIX}/share/doc/c2hs/lib

do-regress:
	@cd ${WRKDIST}/c2hs/tests && ${MAKE_PROGRAM}

.include <bsd.port.mk>
