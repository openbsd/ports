# $OpenBSD: Makefile,v 1.4 2003/08/06 20:45:03 marcm Exp $

COMMENT=		"GNOME control center"

VERSION=		2.2.2
DISTNAME=		control-center-${VERSION}
PKGNAME=		control-center2-${VERSION}
CATEGORIES=		x11 x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/control-center/2.2/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

LIB_DEPENDS=		gnomecanvas-2::x11/gnome/libgnomecanvas \
			gnome-desktop-2::x11/gnome/desktop \
			metacity-private::x11/gnome/metacity

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/control-center2
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Work around a really dumb icon issue...
pre-build:
	cp ${WRKSRC}/capplets/desktop-links/Advanced.directory.in.in ${WRKSRC}/capplets/desktop-links/Advanced.directory.in

.include <bsd.port.mk>
