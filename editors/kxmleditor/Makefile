# $OpenBSD: Makefile,v 1.8 2002/05/13 12:37:37 naddy Exp $

COMMENT=	"xml editor for KDE"

DISTNAME=	kxmleditor-0.7.1
CATEGORIES=	editors
NEED_VERSION=	1.528

HOMEPAGE=	http://kxmleditor.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kxmleditor/}

BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS=	kdecore.3,DCOP,kfile,kdeui,kparts,ksycoca,kio,kdesu,kssl::x11/kde/libs2

PATCH_LIST=${PORTSDIR}/x11/kde/libs2/patches/p-* patch-*

MODULES=	qt2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

.include <bsd.port.mk>
