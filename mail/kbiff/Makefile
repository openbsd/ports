# $OpenBSD: Makefile,v 1.7 2001/10/06 16:58:17 naddy Exp $

COMMENT=		"new mail notification utility"

DISTNAME=		kbiff-3.5
CATEGORIES=		mail
NEED_VERSION=		1.410
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.granroth.org/kbiff/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=  	Yes

MASTER_SITES=		http://devel-home.kde.org/~granroth/kbiff/

BUILD_DEPENDS=		uic::x11/qt2-designer
LIB_DEPENDS=		kdecore.3.::x11/kde/libs2

PATCH_LIST=		${PORTSDIR}/x11/kde/libs2/patches/p-*

MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS=		CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2  KDEDIR=${LOCALBASE}

.include <bsd.port.mk>
