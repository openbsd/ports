# $OpenBSD: Makefile,v 1.4 2002/12/29 20:31:41 fgsch Exp $

COMMENT=	"screen saver that displays a countdown to a selected date"

DISTNAME=	kountdown-0.3.2
CATEGORIES=	x11

HOMEPAGE=	http://w1.911.telia.com/~u91117365/kountdown/kountdown.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://w1.911.telia.com/~u91117365/download/kountdown/

LIB_DEPENDS=	kdecore.4,DCOP,kdefx,kdesu,kdeui,kio,kscreensaver::x11/kde/libs3

MODULES=	qt3

MAKE_ENV=	${CONFIGURE_ENV}
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+= -disable-mt --disable-threading --enable-final
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

.include <bsd.port.mk>
