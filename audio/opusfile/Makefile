# $OpenBSD: Makefile,v 1.10 2018/09/25 19:50:07 naddy Exp $

COMMENT =		high-level decoding and seeking API for Opus files
DISTNAME =		opusfile-0.11
CATEGORIES =		audio

SHARED_LIBS +=		opusfile                  1.0 # 4.4
SHARED_LIBS +=		opusurl                   1.0 # 4.4

HOMEPAGE =		https://opus-codec.org/
MAINTAINER =		Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto m ogg opus ssl

MASTER_SITES =		https://archive.mozilla.org/pub/opus/

LIB_DEPENDS =		audio/libogg \
			audio/opus

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-maintainer-mode
CONFIGURE_ARGS +=	--disable-doc	# requires doxygen

.include <bsd.port.mk>
