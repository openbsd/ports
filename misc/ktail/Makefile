# $OpenBSD: Makefile,v 1.4 2001/10/29 10:59:48 kevlo Exp $

COMMENT=	"file monitor"

DISTNAME=	ktail-0.5.1
CATEGORIES=	misc
NEED_VERSION=	1.487

HOMEPAGE=	http://www.franken.de/users/duffy1/rjakob/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS=	kdecore.3,DCOP,kdeui,kdesu,kfile,kio,kssl,ksycoca::x11/kde/libs2

MODULES=	qt2

MAKE_ENV=	${CONFIGURE_ENV}
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=  ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=  KDEDIR=${LOCALBASE} 

.include <bsd.port.mk>
