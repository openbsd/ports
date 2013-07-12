# $OpenBSD: Makefile,v 1.3 2013/07/12 00:49:23 jca Exp $

COMMENT=	new GNU Portable Threads Library

DISTNAME=	npth-0.91

SHARED_LIBS=	npth 0.0	# 0.2

CATEGORIES=	devel

HOMEPAGE=	http://www.gnupg.org

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		pthread

MASTER_SITES=		${MASTER_SITES_GNUPG:=npth/}

CONFIGURE_STYLE=	gnu

LIBnpth_MAJOR=${LIBnpth_VERSION:R} 
LIBnpth_MINOR=${LIBnpth_VERSION:E} 

SUBST_VARS=		LIBnpth_MAJOR LIBnpth_MINOR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
