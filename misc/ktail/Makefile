# $OpenBSD: Makefile,v 1.6 2002/12/29 19:49:40 fgsch Exp $

COMMENT=	"file monitor"

DISTNAME=	ktail-0.6.1
CATEGORIES=	misc

HOMEPAGE=	http://www.franken.de/users/duffy1/rjakob/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	kdecore.4,DCOP,kdefx,kdesu,kdeui,kio::x11/kde/libs3

MODULES=	qt3

MAKE_ENV=	${CONFIGURE_ENV}
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=  ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --enable-final --disable-mt
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=  KDEDIR=${LOCALBASE} 

.include <bsd.port.mk>
