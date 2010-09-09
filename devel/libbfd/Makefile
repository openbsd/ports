# $OpenBSD: Makefile,v 1.1.1.1 2010/09/09 22:51:49 ckuethe Exp $

COMMENT=	GNU Binary File Descriptor Library

VER=		2.20
DISTNAME=	binutils-${VER}
PKGNAME=	libbfd-${VER}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.gnu.org/software/binutils/
CATEGORIES=	devel
MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

CONFIGURE_STYLE=gnu
MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_ARGS+= --disable-nls --disable-shared

WRKSRC=${WRKDIR}/${DISTNAME}/bfd

.include <bsd.port.mk>
