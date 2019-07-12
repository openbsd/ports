# $OpenBSD: Makefile,v 1.19 2019/07/12 20:47:02 sthen Exp $

COMMENT=	library for decoding/generating MPEG TS/DVB PSI tables

V=		1.3.1
DISTNAME=	libdvbpsi-${V}
CATEGORIES=	devel graphics
MASTER_SITES=	https://download.videolan.org/pub/libdvbpsi/${V}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvbpsi	8.1

HOMEPAGE=	http://www.videolan.org/developers/libdvbpsi.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
