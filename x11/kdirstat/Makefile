# $OpenBSD: Makefile,v 1.5 2002/07/28 00:48:38 brad Exp $

COMMENT=	"graphical disk usage utility"

DISTNAME=	kdirstat-2.2.0
CATEGORIES=	x11

HOMEPAGE=	http://kdirstat.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	kdecore.4,DCOP,kdesu,kdeui,kio::x11/kde/libs3

MODULES=	qt3

# catch $HOME/.kde/share/config
# that meinproc creates durring build.
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

.include <bsd.port.mk>
