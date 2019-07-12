# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:43 sthen Exp $

COMMENT=	new GNU Portable Threads Library

DISTNAME=	npth-1.6

SHARED_LIBS=	npth 1.0	# 1.1

CATEGORIES=	devel

HOMEPAGE=	https://www.gnupg.org/software/npth/index.html

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

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
