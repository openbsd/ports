# $OpenBSD: Makefile,v 1.6 2006/01/08 00:29:37 steven Exp $

COMMENT=	"library for decoding/generating MPEG TS/DVB PSI tables"
VER=		0.1.4
DISTNAME=	libdvbpsi3-${VER}
PKGNAME=	libdvbpsi-${VER}p1
SHARED_LIBS=	dvbpsi	3.0
CATEGORIES=	devel
MASTER_SITES=	http://www.videolan.org/pub/libdvbpsi/${VER}/ \
		http://www.fr.videolan.org/pub/libdvbpsi/${VER}/

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
