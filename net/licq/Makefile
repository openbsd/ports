# $OpenBSD: Makefile,v 1.12 2000/03/26 11:33:25 form Exp $

DISTNAME=	licq-0.61
CATEGORIES=	net
NEED_VERSION=	1.230
MASTER_SITES=	http://licq.wibble.net/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	qt::x11/qt

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ENV=	QT_MOC="${LOCALBASE}/bin/moc"
CONFIGURE_ARGS=	--with-qt-includes=${LOCALBASE}/include/X11/qt

.include <bsd.port.mk>
