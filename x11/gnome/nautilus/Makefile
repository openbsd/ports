# $OpenBSD: Makefile,v 1.2 2003/06/12 20:19:38 marcm Exp $

COMMENT=		"GNOME shell and file manager"

DISTNAME=		nautilus-2.2.2
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/nautilus/
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/nautilus/2.2/}
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
RUN_DEPENDS=		:gnome-icon-theme-*:x11/gnome/icon-theme

CONFDIR=		${SYSCONFDIR}/gnome
SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${CONFDIR}"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/nautilus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -DWEB_NAVIGATION_ENABLED" \
			LDFLAGS="-L${WRKBUILD}/libnautilus/.libs \
				-L${WRKBUILD}/libnautilus-adapter/.libs \
				-L${WRKBUILD}/libnautilus-private/.libs \
				-L${LOCALBASE}/lib"
SUBST_VARS=		CONFDIR

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nautilus; \
	cp -Rp ${WRKINST}/${CONFDIR}/* ${PREFIX}/share/examples/nautilus/

.include <bsd.port.mk>
