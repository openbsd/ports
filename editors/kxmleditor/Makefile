# $OpenBSD: Makefile,v 1.2 2001/08/18 03:39:14 kevlo Exp $

COMMENT=	"xml editor for KDE"

DISTNAME=	kxmleditor-0.5
CATEGORIES=	editors
NEED_VERSION=	1.420

HOMEPAGE=	http://kxmleditor.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= kxmleditor

BUILD_DEPENDS=	uic::x11/qt2-designer
LIB_DEPENDS=	kdecore.3.::x11/kde/libs2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	MOC=${LOCALBASE}/bin/moc2  KDEDIR=${LOCALBASE} 

.include <bsd.port.mk>
