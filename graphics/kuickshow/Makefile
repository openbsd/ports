# $OpenBSD: Makefile,v 1.2 2001/08/02 13:54:52 kevlo Exp $

COMMENT=	"image viewer similar to ACDSee for Windows"

DISTNAME=	kuickshow-0.8.1
CATEGORIES=	graphics
NEED_VERSION=	1.417

HOMEPAGE=	http://kuickshow.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= kuickshow
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	uic::x11/qt2-designer
LIB_DEPENDS=	kdecore.3.::x11/kde/libs2 \
		Imlib.19::graphics/imlib 

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=  --with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+= --with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	MOC=${LOCALBASE}/bin/moc2  KDEDIR=${LOCALBASE}

.include <bsd.port.mk>
