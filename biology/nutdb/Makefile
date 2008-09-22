# $OpenBSD: Makefile,v 1.16 2008/09/22 08:13:28 jasper Exp $

COMMENT=	record and analyze your meals for nutrient composition

DISTNAME=	nut-13.9
PKGNAME=	nutdb-13.9
CATEGORIES=	biology
HOMEPAGE=	http://nut.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nut/}

NO_REGRESS=	Yes

ALL_TARGET=     nut

USE_GMAKE=	Yes

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "mips64"
EXTRA_CFLAGS=	-O0
.endif

MAKE_FLAGS+=	EXTRA_CFLAGS=${EXTRA_CFLAGS}

.include <bsd.port.mk>
