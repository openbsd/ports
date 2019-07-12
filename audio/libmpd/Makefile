# $OpenBSD: Makefile,v 1.24 2019/07/12 20:43:35 sthen Exp $

COMMENT=		mpd client library

VERSION=		11.8.17
DISTNAME=		libmpd-${VERSION}
SHARED_LIBS=		mpd	3.2	#.3.0
CATEGORIES=		audio
REVISION =		4

MAINTAINER=		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		http://gmpclient.org/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += glib-2.0 iconv intl pcre pthread

MASTER_SITES=		https://www.musicpd.org/download/libmpd/${VERSION}/

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
