# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 14:39:10 phessler Exp $

COMMENT =	game programming library for C/C++ developers

SHARED_ONLY =	Yes

V =		1.3
DISTNAME =	alpng13
PKGNAME =	alpng-$V
CATEGORIES =	graphics
SHARED_LIBS =	alleg	0.0	# 4.2

HOMEPAGE =	http://alpng.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=alpng/}

# bsd-like
# "Altered source versions must be plainly marked as such
#  and must not be misrepresented as being the original software."
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_GMAKE =		Yes
LIB_DEPENDS =		::games/allegro

MAKE_FILE =		makefile
MAKE_FLAGS =		CFLAGS=-I${LOCALBASE}/include
NO_REGRESS =		Yes

do-extract:
	@mkdir ${WRKSRC}
	@tar xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${WRKSRC}

do-install:
	${INSTALL_DATA} ${WRKSRC}/libalpng.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/src/alpng.h ${PREFIX}/include

.include <bsd.port.mk>
