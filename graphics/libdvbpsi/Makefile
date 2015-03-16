# $OpenBSD: Makefile,v 1.15 2015/03/16 18:07:47 naddy Exp $

COMMENT=	library for decoding/generating MPEG TS/DVB PSI tables

V=		0.2.2
DISTNAME=	libdvbpsi-${V}
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.videolan.org/pub/libdvbpsi/${V}/ \
		http://www.fr.videolan.org/pub/libdvbpsi/${V}/
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

SHARED_LIBS=	dvbpsi	7.0

HOMEPAGE=	http://developers.videolan.org/libdvbpsi/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
