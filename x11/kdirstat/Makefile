# $OpenBSD: Makefile,v 1.2 2002/05/25 00:42:52 brad Exp $

COMMENT=	"graphical disk usage utility"

DISTNAME=	kdirstat-2.1.1-beta
PKGNAME=	${DISTNAME:S/-beta//}
CATEGORIES=	x11
NEED_VERSION=	1.525

HOMEPAGE=	http://kdirstat.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	kdecore.3,DCOP,kdesu,kdeui,kio::x11/kde/libs3

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
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/admin

.include <bsd.port.mk>
