# $OpenBSD: Makefile,v 1.2 2004/08/10 08:23:37 xsa Exp $
# $FreeBSD: ports/devel/hs-hpl/Makefile,v 1.11 2004/03/11 07:48:11 obraun Exp $

# only for archs to which the GHC ffi has been ported
ONLY_FOR_ARCHS= i386 sparc

COMMENT=	"Haskell library for concurrent and distributed programming"

V=		0.4.1
DISTNAME=	hs-ports-${V}
CATEGORIES=	devel
MAINTAINER=	Don Stewart <dons@openbsd.org>
HOMEPAGE=	http://www.cse.unsw.edu.au/~chak/haskell/ports/ 
MASTER_SITES=	${HOMEPAGE}
DISTFILES=	ports-${V}.tar.gz

MODULES=	lang/ghc

WRKDIST=	${WRKDIR}/ports-${V}
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--prefix=${PREFIX}

do-regress:
	@( cd ${WRKDIST}/tests && sh test.sh )

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
