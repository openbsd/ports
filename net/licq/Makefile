# $OpenBSD: Makefile,v 1.14 2000/04/16 21:38:38 jasoni Exp $

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

FAKE=		Yes
USE_GMAKE=	Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ENV=	QT_MOC="${LOCALBASE}/bin/moc"
CONFIGURE_ARGS=	--with-qt-includes=${LOCALBASE}/include/X11/qt \
		--prefix='$${DESTDIR}${PREFIX}'

.include <bsd.port.mk>
