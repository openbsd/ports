# $OpenBSD: Makefile,v 1.23 2003/12/23 21:08:28 pvalchev Exp $

COMMENT=	"curses-based icq client implementation"

DISTNAME=	centericq-4.9.9
CATEGORIES=	net	
MASTER_SITES=	http://konst.org.ua/download/ \
		http://konst.home.welcomehome.org/ \
		http://centericq.de/archive/source/releases/

HOMEPAGE=	http://konst.org.ua/software.centericq.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	sigc.0:libsigc++-*:devel/libsigc++ \
		glib.::devel/glib

MODULES=	gcc3 gettext iconv
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	c++

USE_GMAKE=	Yes
#CONFIGURE_STYLE= autoconf automake
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-liconv"
CONFIGURE_ARGS=	--includedir="${LOCALBASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/centericq.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
