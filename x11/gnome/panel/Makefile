# $OpenBSD: Makefile,v 1.2 2003/06/12 20:09:35 marcm Exp $

COMMENT=		"GNOME panel"

DISTNAME=		gnome-panel-2.2.1
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-panel/2.2/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext

BUILD_DEPENDS= 		:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:scrollkeeper->=0.3.11:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper->=0.3.11:textproc/scrollkeeper \
			:control-center2-*:x11/gnome/controlcenter2
LIB_DEPENDS= 		gnome-desktop-2.0::x11/gnome/desktop \
			wnck-1.4::devel/libwnck

CONFDIR=		${SYSCONFDIR}/gnome
SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${CONFDIR}"
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ARGS+= 	--disable-rebuilds
CONFIGURE_ARGS+= 	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-panel
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		CONFDIR

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-panel; \
	cp -Rp ${WRKINST}/${CONFDIR}/* ${PREFIX}/share/examples/gnome-panel/

.include <bsd.port.mk>
