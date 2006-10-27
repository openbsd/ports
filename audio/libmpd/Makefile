# $OpenBSD: Makefile,v 1.1.1.1 2006/10/27 14:08:02 jasper Exp $

COMMENT=		"mpd client library"

DISTNAME=		libmpd-0.12.0
SHARED_LIBS=		mpd	0.0
CATEGORIES=		audio

HOMEPAGE=		http://cms.qballcow.nl/index.php?page=libmpd

MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.qballcow.nl/programs/gmpc-0.13/

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

MODULES=		gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c

.include <bsd.port.mk>
