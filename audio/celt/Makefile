# $OpenBSD: Makefile,v 1.3 2011/04/04 08:38:35 dcoppa Exp $

COMMENT =	ultra-low delay audio codec

DISTNAME =	celt-0.11.1

CATEGORIES =   	audio

HOMEPAGE =	http://www.celt-codec.org/

SHARED_LIBS +=	celt0	1.0	# 2.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://downloads.xiph.org/releases/celt/

WANTLIB =		c m ogg>=5 sndio

LIB_DEPENDS =		audio/libogg

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-ogg=${LOCALBASE}

CONFIGURE_ENV =		CPPFLAGS="-DUSE_SNDIO"

SEPARATE_BUILD =	simple

.include <bsd.port.mk>
