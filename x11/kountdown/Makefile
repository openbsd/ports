# $OpenBSD: Makefile,v 1.1.1.1 2002/03/06 11:41:42 kevlo Exp $

COMMENT=	"screen saver that displays a countdown to a selected date"

DISTNAME=	kountdown-0.2p1
CATEGORIES=	x11
NEED_VERSION=	1.508

HOMEPAGE=	http://w1.911.telia.com/~u91117365/kountdown.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://w1.911.telia.com/~u91117365/download/kountdown/

BUILD_DEPENDS=	::x11/qt2-designer

LIB_DEPENDS=	kdecore.3,DCOP,kdesu,kdeui,kio,kscreensaver,kssl,ksycoca::x11/kde/libs2

MODULES=	qt2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

.include <bsd.port.mk>
