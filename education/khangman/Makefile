# $OpenBSD: Makefile,v 1.2 2001/11/27 02:51:03 kevlo Exp $

COMMENT=	"classical hangman game"

DISTNAME=	khangman-0.71
CATEGORIES=	education
NEED_VERSION=	1.484

HOMEPAGE=	http://edu.kde.org/khangman/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	::x11/qt2-designer \
		::devel/automake

LIB_DEPENDS=	kdecore.3,DCOP,kdeui::x11/kde/libs2

MODULES=	qt2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

.include <bsd.port.mk>
