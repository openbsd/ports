COMMENT =	minimalistic music player

DISTNAME =	amused-0.16

CATEGORIES =	audio

HOMEPAGE =	https://projects.omarpolo.com/amused.html

MAINTAINER =	Omar Polo <op@openbsd.org>

# amused, amused-web: ISC, Public Domain
# amused-mpris2: ISC, Public Domain, GPLv2+
PERMIT_PACKAGE = Yes

# uses pledge
WANTLIB += FLAC c gio-2.0 glib-2.0 gobject-2.0 intl mpg123 opusfile
WANTLIB += sndio util vorbisfile

SITES =		https://ftp.omarpolo.com/

LIB_DEPENDS =	audio/flac \
		audio/libvorbis \
		audio/mpg123 \
		audio/opusfile \
		devel/glib2

CONFIGURE_STYLE = simple
CONFIGURE_ARGS = --backend=sndio --with-mpris2

NO_TEST =	Yes

.include <bsd.port.mk>
