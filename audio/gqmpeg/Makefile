# $OpenBSD: Makefile,v 1.22 2001/10/11 18:16:30 brad Exp $

COMMENT=		"mpg123 front-end with skin support"

DISTNAME=		gqmpeg-0.9.0		
CATEGORIES=		audio
NEED_VERSION=		1.460

HOMEPAGE=		http://gqmpeg.sourceforge.net

MAINTAINER=		Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp1.sourceforge.net/gqmpeg/ \
			${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	gqmpeg

MODULES=		gettext
BUILD_DEPENDS=		::audio/mpg123
RUN_DEPENDS=		::audio/mpg123
LIB_DEPENDS=		gdk_pixbuf.2::graphics/gdk-pixbuf

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DOCS=			COPYING ChangeLog FAQ README SKIN-SPECS-V1 \
			plugin/README.plugin

pre-install:
	cd ${WRKSRC} && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqmpeg && \
	    ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gqmpeg

.include <bsd.port.mk>
