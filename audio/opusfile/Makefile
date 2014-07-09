# $OpenBSD $

COMMENT =		high-level decoding and seeking API for Opus files
DISTNAME =		opusfile-0.6
CATEGORIES =		audio

SHARED_LIBS +=		opusfile                  0.0 # 3.1
SHARED_LIBS +=		opusurl                   0.0 # 3.1

HOMEPAGE =		http://opus-codec.org/
MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto m ogg opus ssl

MASTER_SITES =		http://downloads.xiph.org/releases/opus/ \
			https://ftp.mozilla.org/pub/mozilla.org/opus/

LIB_DEPENDS =		audio/libogg \
			audio/opus

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-maintainer-mode
CONFIGURE_ARGS +=	--disable-doc	# requires doxygen

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS +=	--enable-fixed-point
.endif

.include <bsd.port.mk>
