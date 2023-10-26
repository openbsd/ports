COMMENT =		library for low-level data structures

DISTNAME =		libmaa-1.4.7

CATEGORIES =		devel

SHARED_LIBS += 		maa	0.0	# 4.0

HOMEPAGE =		https://www.dict.org

# MIT
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=dict/}

MAKE_FLAGS =		MAA_MAJOR=${LIBmaa_VERSION:R} \
			MAA_MINOR=${LIBmaa_VERSION:E} \
			SRCDIR_maa=${WRKSRC}

FAKE_FLAGS =		LIBDIR=/usr/local/lib

WRKSRC =		${WRKDIST}/maa

NO_TEST =		Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/maa.h ${PREFIX}/include/

.include <bsd.port.mk>
