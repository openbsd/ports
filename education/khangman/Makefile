# $OpenBSD: Makefile,v 1.4 2002/08/01 01:26:57 brad Exp $

COMMENT=	"classical hangman game"

DISTNAME=	khangman-0.8
CATEGORIES=	education

HOMEPAGE=	http://edu.kde.org/khangman/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	kdecore.4,DCOP,kdeui,kdefx::x11/kde/libs3

MODULES=	qt3

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --disable-debug --enable-final
CONFIGURE_ARGS+= --disable-threading --disable-mt
CONFIGURE_ARGS+= --with-extra-libs="${LOCALBASE}/lib"
CONFIGURE_ARGS+= --with-extra-includes="${LOCALBASE}/include"
CONFIGURE_ARGS+= --with-xinerama
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" KDEDIR="${LOCALBASE}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applnk/Applications
	${INSTALL_DATA} ${WRKSRC}/khangman/khangman.desktop \
		${PREFIX}/share/applnk/Applications

.include <bsd.port.mk>
