# $OpenBSD: Makefile,v 1.1.1.1 2002/03/01 06:24:08 kevlo Exp $

COMMENT=	"graphical disk usage utility"

DISTNAME=	kdirstat-2.0.0
CATEGORIES=	x11
NEED_VERSION=	1.505

HOMEPAGE=	http://kdirstat.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS=	kdecore.3,DCOP,kdesu,kdeui,kfile,kio,kssl,ksycoca::x11/kde/libs2

MODULES=	qt2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

.include <bsd.port.mk>
