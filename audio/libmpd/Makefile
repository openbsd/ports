# $OpenBSD: Makefile,v 1.20 2015/03/16 18:07:36 naddy Exp $

COMMENT=		mpd client library

VERSION=		11.8.17
DISTNAME=		libmpd-${VERSION}
SHARED_LIBS=		mpd	3.2	#.3.0
CATEGORIES=		audio
REVISION =		2

MAINTAINER=		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		http://gmpclient.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.musicpd.org/download/libmpd/${VERSION}/

LIB_DEPENDS=		devel/glib2
WANTLIB=		glib-2.0 pcre

CONFIGURE_STYLE=	gnu

MODULES=		devel/gettext

.include <bsd.port.mk>
