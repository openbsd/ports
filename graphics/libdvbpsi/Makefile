# $OpenBSD: Makefile,v 1.9 2009/08/18 23:41:12 jolan Exp $

COMMENT=	library for decoding/generating MPEG TS/DVB PSI tables
V=		0.1.6
DISTNAME=	libdvbpsi5-${V}
PKGNAME=	libdvbpsi-${V}
SHARED_LIBS=	dvbpsi	5.0
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
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
