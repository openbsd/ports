# $OpenBSD: Makefile,v 1.3 2002/05/15 17:42:24 espie Exp $

COMMENT=	"QT/KDE based AOL Instant Messenter (AiM) client"

# version 1.01 has problems building because of changes to Makefile.in
VERSION=	1.00
DISTNAME=	kinkatta-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.500

HOMEPAGE=	http://kinkatta.sourceforge.net

MAINTAINER=	Jeff Nathan <jeff@wwti.com>

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kinkatta/}

MODULES=	qt2

LIB_DEPENDS=	kdecore.3,kdeui,DCOP,kdesu,kfile,kio,kssl,ksycoca::x11/kde/libs2

BUILD_DEPENDS=	::x11/qt2-designer

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	KDEDIR=${LOCALBASE}

.include <bsd.port.mk>
