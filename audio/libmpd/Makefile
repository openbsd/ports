COMMENT=		mpd client library

GH_ACCOUNT =	DaveDavenport
GH_PROJECT =	libmpd
GH_COMMIT =	8601a0e3a80981398c037ac311d03b5cf94ec1d4

DISTNAME =	${GH_PROJECT}-11.8.90pl20220104
SHARED_LIBS=		mpd	3.3	#.3.0
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <landry@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += glib-2.0 iconv intl pcre2-8 pthread

LIB_DEPENDS=		devel/glib2

AUTOMAKE_VERSION=	1.15
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoreconf

.include <bsd.port.mk>
