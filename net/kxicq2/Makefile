# $OpenBSD: Makefile,v 1.4 2002/01/21 12:54:38 kevlo Exp $

COMMENT=	"ICQ client for KDE"

DISTNAME=	kxicq2-0.7.6
CATEGORIES=	net
NEED_VERSION=	1.504

HOMEPAGE=	http://kxicq.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= kxicq

BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS=	kdecore.3,DCOP,kdesu,kdeui,kfile,kio,kssl,ksycoca::x11/kde/libs2

MODULES=	qt2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=     CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	KDEDIR=${LOCALBASE}

.include <bsd.port.mk>
