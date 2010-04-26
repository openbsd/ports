# $OpenBSD: Makefile,v 1.10 2010/04/26 00:11:37 jolan Exp $

COMMENT=	library for decoding/generating MPEG TS/DVB PSI tables
V=		0.1.7
DISTNAME=	libdvbpsi-${V}
SHARED_LIBS=	dvbpsi	6.0
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.videolan.org/pub/libdvbpsi/${V}/ \
		http://www.fr.videolan.org/pub/libdvbpsi/${V}/

HOMEPAGE=	http://developers.videolan.org/libdvbpsi/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
