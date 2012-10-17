# $OpenBSD: Makefile,v 1.1.1.1 2012/10/17 11:56:22 pea Exp $

COMMENT=	new GNU Portable Threads Library

DISTNAME=	npth-0.91

SHARED_LIBS=	npth 0.0	# 0.2

CATEGORIES=	devel

HOMEPAGE=	http://www.gnupg.org

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		pthread

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/npth/

CONFIGURE_STYLE=	gnu

LIBnpth_MAJOR=${LIBnpth_VERSION:R} 
LIBnpth_MINOR=${LIBnpth_VERSION:E} 

SUBST_VARS=		LIBnpth_MAJOR LIBnpth_MINOR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
