# $OpenBSD: Makefile,v 1.18 2001/03/27 20:48:24 rohee Exp $

COMMENT=	"mpg123 front-end with skin support"

DISTNAME=		gqmpeg-0.9.0		
CATEGORIES=		audio
NEED_VERSION=		1.364

HOMEPAGE=		http://gqmpeg.sourceforge.net

MAINTAINER=		Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp1.sourceforge.net/gqmpeg/ \
			${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	gqmpeg

BUILD_DEPENDS=		mpg123::audio/mpg123 \
			gdk-pixbuf-config::graphics/gdk-pixbuf
RUN_DEPENDS=		mpg123::audio/mpg123
LIB_DEPENDS=		png.1::graphics/png

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LIBPNG="-lpng -lz"

DOCS=			COPYING ChangeLog FAQ README SKIN-SPECS SKIN-SPECS-V1 \
	plugin/README.plugin

pre-install:
	cd ${WRKSRC} && (${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqmpeg && \
	     ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gqmpeg)

.include <bsd.port.mk>
