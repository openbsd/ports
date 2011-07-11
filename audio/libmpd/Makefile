# $OpenBSD: Makefile,v 1.13 2011/07/11 14:04:42 jasper Exp $

COMMENT=		mpd client library

VERSION=		0.20.0
DISTNAME=		libmpd-${VERSION}
REVISION=		0
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

LIB_DEPENDS=		devel/glib2
WANTLIB=		glib-2.0 pcre

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

MODULES=		devel/gettext

.include <bsd.port.mk>
