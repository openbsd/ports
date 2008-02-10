# $OpenBSD: Makefile,v 1.14 2008/02/10 18:23:24 jasper Exp $

COMMENT=	record and analyze your meals for nutrient composition

DISTNAME=	nut-12.5
PKGNAME=	nutdb-12.5
CATEGORIES=	biology
HOMEPAGE=	http://www.lafn.org/~av832/

MAINTAINER=	Jon Trembley <jon@brain-box.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

ALL_TARGET=     nut

USE_GMAKE=	Yes

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "mips64"
EXTRA_CFLAGS=	-O0
.endif

MAKE_FLAGS+=		EXTRA_CFLAGS=${EXTRA_CFLAGS}

.include <bsd.port.mk>
