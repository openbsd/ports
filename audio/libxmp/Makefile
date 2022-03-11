COMMENT =	module player library

DISTNAME =	libxmp-4.5.0
CATEGORIES =	audio

SHARED_LIBS +=	xmp		1.1	# 4.5

HOMEPAGE =	http://xmp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xmp/}

WANTLIB +=	m

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

MAKE_FLAGS +=	V=1 \
		LIBxmp_VERSION=${LIBxmp_VERSION}

FAKE_FLAGS =	DESTDIR=${WRKINST}

.include <bsd.port.mk>
