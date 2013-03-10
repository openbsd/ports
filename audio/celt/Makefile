# $OpenBSD: Makefile,v 1.9 2013/03/10 22:55:01 espie Exp $

COMMENT =	ultra-low delay audio codec

DISTNAME =	celt-0.11.3

REVISION =	0

EPOCH =		0

CATEGORIES =   	audio

HOMEPAGE =	http://www.celt-codec.org/

SHARED_LIBS +=	celt0	1.0	# 2.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://downloads.xiph.org/releases/celt/

WANTLIB =		c m ogg>=5 sndio

LIB_DEPENDS =		audio/libogg

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--enable-assertions \
			--enable-custom-modes \
			--with-ogg=${LOCALBASE}

CONFIGURE_ENV =		CPPFLAGS="-DUSE_SNDIO"

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
