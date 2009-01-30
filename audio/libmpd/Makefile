# $OpenBSD: Makefile,v 1.7 2009/01/30 22:45:10 landry Exp $

COMMENT=		mpd client library

VERSION=		0.17.0
DISTNAME=		libmpd-${VERSION}
SHARED_LIBS=		mpd	3.0
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

HOMEPAGE=		http://gmpcwiki.sarine.nl/index.php?title=Libmpd

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

LIB_DEPENDS=		glib-2.0::devel/glib2
WANTLIB=		pcre

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

MODULES=		devel/gettext gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c

.include <bsd.port.mk>
