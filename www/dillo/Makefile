# $OpenBSD: Makefile,v 1.1.1.1 2002/03/18 14:31:20 couderc Exp $

COMMENT=		"Dillo is a Gtk-based web browser"

DISTNAME=		dillo-0.6.4
CATEGORIES=     	www
NEED_VERSION=		1.508

HOMEPAGE=		http://dillo.sourceforge.net

MAINTAINER=		Damien Couderc <couderc.damien@wanadoo.fr>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	dillo

LIB_DEPENDS=    jpeg.62::graphics/jpeg \
                png.2::graphics/png \
		gtk.1.2::x11/gtk+

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-jpeg-inc=${LOCALBASE}/include \
			--with-jpeg-lib=${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dillo
	${INSTALL_DATA} ${WRKSRC}/dillorc ${PREFIX}/share/examples/dillo/

.include <bsd.port.mk>
