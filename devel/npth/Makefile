# $OpenBSD: Makefile,v 1.5 2015/09/18 10:41:05 pea Exp $

COMMENT=	new GNU Portable Threads Library

DISTNAME=	npth-1.2

SHARED_LIBS=	npth 0.0	# 0.5

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
