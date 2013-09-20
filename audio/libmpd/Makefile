# $OpenBSD: Makefile,v 1.19 2013/09/20 05:32:57 dcoppa Exp $

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

MASTER_SITES=		http://www.musicpd.org/download/libmpd/${VERSION}/

LIB_DEPENDS=		devel/glib2
WANTLIB=		glib-2.0 pcre

CONFIGURE_STYLE=	gnu

MODULES=		devel/gettext

.include <bsd.port.mk>
