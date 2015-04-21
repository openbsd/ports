# $OpenBSD: Makefile,v 1.21 2015/04/21 18:40:20 sthen Exp $

COMMENT=		mpd client library

VERSION=		11.8.17
DISTNAME=		libmpd-${VERSION}
SHARED_LIBS=		mpd	3.2	#.3.0
CATEGORIES=		audio
REVISION =		3

MAINTAINER=		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		http://gmpclient.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += glib-2.0 pcre pthread

MASTER_SITES=		http://www.musicpd.org/download/libmpd/${VERSION}/

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

MODULES=		devel/gettext

.include <bsd.port.mk>
