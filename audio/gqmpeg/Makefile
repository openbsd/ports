# $OpenBSD: Makefile,v 1.28 2002/05/20 00:15:23 brad Exp $

COMMENT=		"mpg123 front-end with skin support"

DISTNAME=		gqmpeg-0.12.1		
CATEGORIES=		audio
NEED_VERSION=		1.504

HOMEPAGE=		http://gqmpeg.sourceforge.net

MAINTAINER=		Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gqmpeg/}

MODULES=		gettext
BUILD_DEPENDS=		::audio/mpg123
RUN_DEPENDS=		::audio/mpg123
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
