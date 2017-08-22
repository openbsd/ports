# $OpenBSD: Makefile,v 1.7 2017/08/22 21:07:45 edd Exp $

COMMENT=	new GNU Portable Threads Library

DISTNAME=	npth-1.5

SHARED_LIBS=	npth 1.0	# 1.1

CATEGORIES=	devel

HOMEPAGE=	http://www.gnupg.org

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		pthread

MASTER_SITES=		${MASTER_SITE_GNUPG:=npth/}

CONFIGURE_STYLE=	gnu

LIBnpth_MAJOR=${LIBnpth_VERSION:R} 
LIBnpth_MINOR=${LIBnpth_VERSION:E} 

SUBST_VARS=		LIBnpth_MAJOR LIBnpth_MINOR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
