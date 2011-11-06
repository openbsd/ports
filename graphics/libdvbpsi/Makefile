# $OpenBSD: Makefile,v 1.12 2011/11/06 20:28:11 kili Exp $

COMMENT=	library for decoding/generating MPEG TS/DVB PSI tables

V=		0.2.2
DISTNAME=	libdvbpsi-${V}
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.videolan.org/pub/libdvbpsi/${V}/ \
		http://www.fr.videolan.org/pub/libdvbpsi/${V}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvbpsi	7.0

HOMEPAGE=	http://developers.videolan.org/libdvbpsi/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
