COMMENT=		mpd client library

VERSION=		11.8.17
DISTNAME=		libmpd-${VERSION}
SHARED_LIBS=		mpd	3.2	#.3.0
CATEGORIES=		audio
REVISION =		7

MAINTAINER=		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		https://gmpc.fandom.com/wiki/Libmpd

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += glib-2.0 iconv intl pcre2-8 pthread

SITES=			https://www.musicpd.org/download/libmpd/${VERSION}/

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
