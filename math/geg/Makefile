# $OpenBSD: Makefile,v 1.2 2001/03/24 12:51:51 reinhard Exp $

COMMENT=	'simple program for plotting 2d mathematical functions'

DISTNAME=	geg-1.0.2
CATEGORIES=	math
NEED_VERSION=	1.363

MASTER_SITES=	http://www.infolaunch.com/~daveb/ \
		${MASTER_SITE_SUNSITE}

MASTER_SITE_SUBDIR= science/visualization/plotting

MAINTAINER=	Peter Valchev <pvalchev@home.com>

HOMEPAGE=	http://www.infolaunch.com/~daveb/

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

USE_X11=	Yes

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	intl.1::devel/gettext \
		gtk.1.2::x11/gtk+ \
		glib.1::devel/glib \
		gdk_imlib::graphics/imlib

CONFIGURE_STYLE= gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/geg ${PREFIX}/bin/geg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/geg
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/geg
	${INSTALL_MAN} ${WRKSRC}/geg.1 ${PREFIX}/man/man1/geg.1

.include <bsd.port.mk>
