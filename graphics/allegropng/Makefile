# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:56 sthen Exp $

COMMENT =	game programming library for C/C++ developers

V =		1.3
DISTNAME =	alpng13
PKGNAME =	alpng-$V
REVISION =	0
CATEGORIES =	graphics
SHARED_LIBS =	alleg	0.0	# 4.2

HOMEPAGE =	http://alpng.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=alpng/}

# bsd-like
# "Altered source versions must be plainly marked as such
#  and must not be misrepresented as being the original software."
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes
BUILD_DEPENDS +=	games/allegro
RUN_DEPENDS +=		games/allegro

MAKE_FILE =		makefile
MAKE_FLAGS =		CFLAGS=-I${LOCALBASE}/include
NO_TEST =		Yes

do-extract:
	@mkdir ${WRKSRC}
	@tar xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${WRKSRC}

do-install:
	${INSTALL_DATA} ${WRKSRC}/libalpng.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/src/alpng.h ${PREFIX}/include

.include <bsd.port.mk>
