# $OpenBSD: Makefile,v 1.5 2003/10/07 05:48:54 marcm Exp $

COMMENT=		"GNOME control center"

VERSION=		2.4.0
DISTNAME=		control-center-${VERSION}
PKGNAME=		control-center2-${VERSION}
CATEGORIES=		x11 x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/control-center/2.4/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

LIB_DEPENDS=		metacity-private::x11/gnome/metacity \
			nautilus::x11/gnome/nautilus

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/control-center2
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

# Work around a really dumb icon issue...
pre-build:
	cp ${WRKSRC}/capplets/desktop-links/Advanced.directory.in.in ${WRKSRC}/capplets/desktop-links/Advanced.directory.in

.include <bsd.port.mk>
