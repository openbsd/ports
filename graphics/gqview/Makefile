# $OpenBSD: Makefile,v 1.15 2000/09/24 07:04:07 brad Exp $
# $FreeBSD: Makefile,v 1.15 1999/08/25 06:14:08 obrien Exp $

DISTNAME=	gqview-0.8.2
CATEGORIES=	graphics
NEED_VERSION=	1.330
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= gqview

HOMEPAGE=	http://gqview.sourceforge.net

LIB_DEPENDS=	gdk_imlib.19::graphics/imlib

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DOCS=	COPYING ChangeLog README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqview
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gqview

.include <bsd.port.mk>
