# $OpenBSD: Makefile,v 1.1.1.1 2001/04/16 16:46:31 lebel Exp $

COMMENT=		"new mail notification utility"

DISTNAME=		kbiff-3.4
CATEGORIES=		mail
NEED_VERSION=		1.396

HOMEPAGE=		http://www.granroth.org/kbiff/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=  	Yes

MASTER_SITES=		http://devel-home.kde.org/~granroth/kbiff/

BUILD_DEPENDS=		uic::x11/qt2-designer
LIB_DEPENDS=		kdecore.3.::x11/kde/libs2

MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS=		CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

USE_X11=		Yes
USE_BZIP2=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2  KDEDIR=${LOCALBASE}

.include <bsd.port.mk>
