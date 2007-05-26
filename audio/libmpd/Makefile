# $OpenBSD: Makefile,v 1.4 2007/05/26 15:09:29 jasper Exp $

COMMENT=		"mpd client library"

DISTNAME=		libmpd-0.14.0
SHARED_LIBS=		mpd	1.0
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

HOMEPAGE=		http://sarine.nl/libmpd

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.sarine.nl/gmpc-0.15.0/

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

MODULES=		gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c

.include <bsd.port.mk>
