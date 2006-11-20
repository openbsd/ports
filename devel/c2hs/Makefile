# $OpenBSD: Makefile,v 1.6 2006/11/20 13:07:19 espie Exp $
# $FreeBSD: ports/devel/hs-c2hs/Makefile,v 1.20 2004/03/25 08:29:28 obraun Exp $

COMMENT=		"interface generator for Haskell to C bindings"

V=			0.13.6
DISTNAME=		c2hs-${V}
CATEGORIES=		devel
MAINTAINER=		Don Stewart <dons@openbsd.org>
HOMEPAGE=		http://www.cse.unsw.edu.au/~chak/haskell/c2hs/
MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/ghc

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--prefix=${PREFIX}
SUBST_VARS=		V

post-build:
	@cd ${WRKSRC}/doc/c2hs && ${MAKE_PROGRAM} man1/c2hs-config.1 man1/c2hs.1

post-install:
	@cd ${WRKSRC}/doc/c2hs/man1 && \
		${INSTALL_MAN} c2hs-config.1 c2hs.1 ${PREFIX}/man/man1

do-regress:
	@cd ${WRKDIST}/c2hs/tests && ${MAKE_PROGRAM}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gmp m

.include <bsd.port.mk>
