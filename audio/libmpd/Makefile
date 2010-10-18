# $OpenBSD: Makefile,v 1.11 2010/10/18 22:43:10 sthen Exp $

COMMENT=		mpd client library

VERSION=		0.20.0
DISTNAME=		libmpd-${VERSION}
SHARED_LIBS=		mpd	3.2	#.3.0
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

HOMEPAGE=		http://gmpc.wikia.com/?title=Libmpd

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

LIB_DEPENDS=		::devel/glib2
WANTLIB=		glib-2.0 pcre

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

MODULES=		devel/gettext gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c

.include <bsd.port.mk>
