# $OpenBSD: Makefile,v 1.16 2012/09/01 14:36:56 ajacoutot Exp $

COMMENT=		mpd client library

VERSION=		11.8.17
DISTNAME=		libmpd-${VERSION}
SHARED_LIBS=		mpd	3.2	#.3.0
CATEGORIES=		audio
REVISION =		1

MAINTAINER=		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		http://gmpclient.org/

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
