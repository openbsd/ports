# $OpenBSD: Makefile,v 1.1.1.1 2003/01/31 19:03:46 todd Exp $

COMMENT=		"GNOME shell and file manager"

DISTNAME=		nautilus-2.0.8
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/nautilus/
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/nautilus/2.0/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext

BUILD_DEPENDS= 		:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:ORBit2-*:devel/ORBit2
LIB_DEPENDS=		eel-2.2::x11/gnome/eel \
			gailutil.17::x11/gnome/gail \
			gnome-desktop-2.0::x11/gnome/desktop \
			rsvg-2.2::x11/gnome/librsvg

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/nautilus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -DWEB_NAVIGATION_ENABLED" \
			LDFLAGS="-L${WRKBUILD}/libnautilus/.libs \
				-L${WRKBUILD}/libnautilus-adapter/.libs \
				-L${WRKBUILD}/libnautilus-private/.libs \
				-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nautilus; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/nautilus/

.include <bsd.port.mk>
