# $OpenBSD: Makefile,v 1.12 2020/07/10 19:44:31 naddy Exp $

COMMENT =		high-level decoding and seeking API for Opus files
DISTNAME =		opusfile-0.12
CATEGORIES =		audio

SHARED_LIBS +=		opusfile                  1.0 # 4.5
SHARED_LIBS +=		opusurl                   1.0 # 4.5

HOMEPAGE =		https://opus-codec.org/
MAINTAINER =		Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		crypto m ogg opus ssl

MASTER_SITES =		https://downloads.xiph.org/releases/opus/

LIB_DEPENDS =		audio/libogg \
			audio/opus

DEBUG_PACKAGES =	${BUILD_PACKAGES}

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-maintainer-mode
CONFIGURE_ARGS +=	--disable-doc	# requires doxygen

.include <bsd.port.mk>
