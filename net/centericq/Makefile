# $OpenBSD: Makefile,v 1.19 2003/05/13 02:32:54 pvalchev Exp $

COMMENT=	"curses-based icq client implementation"

DISTNAME=	centericq-4.9.2
CATEGORIES=	net	
MASTER_SITES=	http://konst.org.ua/download/ \
		http://konst.home.welcomehome.org/ \
		http://centericq.de/archive/source/releases/

HOMEPAGE=	http://konst.org.ua/software.centericq.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	sigc.0:libsigc++-*:devel/libsigc++ \
		glib.::devel/glib \
		iconv.::converters/libiconv

MODULES=	gcc3 gettext
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	c++

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
BUILD_DEPENDS=	:automake-*:devel/automake
CONFIGURE_ENV=	PREFIX="${PREFIX}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-liconv"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/centericq

.include <bsd.port.mk>
