# $OpenBSD: Makefile,v 1.31 2002/11/13 19:39:07 brad Exp $

COMMENT=		"mpg123 front-end with skin support"

DISTNAME=		gqmpeg-0.16.0		
CATEGORIES=		audio

HOMEPAGE=		http://gqmpeg.sourceforge.net

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gqmpeg/}

MODULES=		gettext
BUILD_DEPENDS=		:mpg123-*:audio/mpg123
RUN_DEPENDS=		${BUILD_DEPENDS}
LIB_DEPENDS=		gdk_pixbuf.2::graphics/gdk-pixbuf

CONFIGURE_STYLE=	gnu
AUTOCONF_NEW=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DOCS=			COPYING ChangeLog FAQ README SKIN-SPECS-V1 \
			plugin/README.plugin

pre-install:
	cd ${WRKSRC} && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqmpeg && \
	    ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gqmpeg

.include <bsd.port.mk>
