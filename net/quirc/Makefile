# $OpenBSD: Makefile,v 1.1.1.1 2001/01/19 03:00:58 kevlo Exp $

DISTNAME=	quirc-0.9.79
CATEGORIES=	net
NEED_VERSION=	1.351

HOMEPAGE=	http://patearl.powersurfr.com/quirc/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	tk83.1.3::x11/tk/8.3

USE_X11=	Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-tk-include-dir=${PREFIX}/include/tk8.3.2 \
			--with-tk-lib-dir=${PREFIX}/lib/tk8.3.2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/quirc/common
	${INSTALL_DATA_DIR} ${PREFIX}/share/quirc/themes
	${INSTALL_DATA} ${WRKSRC}/data/common/install.tcl ${PREFIX}/share/quirc/common
	${INSTALL_DATA} ${WRKSRC}/data/themes/default.tcl ${PREFIX}/share/quirc/themes

.include <bsd.port.mk>
