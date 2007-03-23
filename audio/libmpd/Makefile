# $OpenBSD: Makefile,v 1.3 2007/03/23 23:40:47 jasper Exp $

COMMENT=		"mpd client library"

DISTNAME=		libmpd-0.13.0
SHARED_LIBS=		mpd	1.0
CATEGORIES=		audio

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.sarine.nl/gmpc-0.14.0/

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

MODULES=		gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c

.include <bsd.port.mk>
