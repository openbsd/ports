# $OpenBSD: Makefile,v 1.20 2001/10/28 13:05:48 espie Exp $

COMMENT=	"ICQ clone for UNIX"

DISTNAME=	licq-0.61
CATEGORIES=	net
NEED_VERSION=	1.363
MASTER_SITES=	http://licq.wibble.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	qt.1.::x11/qt

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	QT_MOC="${LOCALBASE}/bin/moc"
CONFIGURE_ARGS=	--with-qt-includes=${LOCALBASE}/include/X11/qt \
	--with-qt-libraries=${LOCALBASE}/lib/qt

.include <bsd.port.mk>
