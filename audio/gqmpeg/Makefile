# $OpenBSD: Makefile,v 1.35 2004/10/01 22:38:47 naddy Exp $

COMMENT=		"front-end to various audio players"

DISTNAME=		gqmpeg-0.20.0		
CATEGORIES=		audio

HOMEPAGE=		http://gqmpeg.sourceforge.net/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gqmpeg/}

MODULES=		devel/gettext

RUN_DEPENDS+=		:mpg321-*:audio/mpg321

LIB_DEPENDS=		gdk_pixbuf.2::graphics/gdk-pixbuf

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.52
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_GNOME_CONFIG=no

DOCS=			FAQ README SKIN-SPECS-V1 \
			plugin/README.plugin

post-install:
	cd ${WRKSRC} && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqmpeg && \
	    ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gqmpeg

.include <bsd.port.mk>
