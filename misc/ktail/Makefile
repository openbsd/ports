# $OpenBSD: Makefile,v 1.3 2001/09/28 06:02:14 pvalchev Exp $

COMMENT=	"file monitor"

DISTNAME=	ktail-0.5.1
CATEGORIES=	misc
NEED_VERSION=	1.397

HOMEPAGE=	http://www.franken.de/users/duffy1/rjakob/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	uic::x11/qt2-designer
LIB_DEPENDS=	kdecore.3.::x11/kde/libs2

MAKE_ENV=	${CONFIGURE_ENV}
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=         --with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=        --with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=        --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ENV=  	MOC=${LOCALBASE}/bin/moc2  KDEDIR=${LOCALBASE}

.include <bsd.port.mk>
