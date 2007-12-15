# $OpenBSD: Makefile,v 1.6 2007/12/15 13:05:43 landry Exp $

COMMENT=		mpd client library

DISTNAME=		libmpd-0.15.0
SHARED_LIBS=		mpd	2.0
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

HOMEPAGE=		http://sarine.nl/libmpd

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.sarine.nl/gmpc-0.15.5/

LIB_DEPENDS=		glib-2.0.>=1400::devel/glib2
WANTLIB=		pcre iconv intl

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

MODULES=		gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c

.include <bsd.port.mk>
