# $OpenBSD: Makefile,v 1.5 2001/10/28 12:30:13 espie Exp $

COMMENT=	"image viewer similar to ACDSee for Windows"

DISTNAME=	kuickshow-0.8.1
CATEGORIES=	graphics
NEED_VERSION=	1.483

HOMEPAGE=	http://kuickshow.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= kuickshow
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	::x11/qt2-designer

LIB_DEPENDS=	kdecore.3.::x11/kde/libs2 \
		Imlib.19::graphics/imlib 

MODULES=	qt2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=     CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	KDEDIR=${LOCALBASE}

.include <bsd.port.mk>
