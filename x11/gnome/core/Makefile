# $OpenBSD: Makefile,v 1.6 2001/09/20 18:58:42 naddy Exp $

COMMENT=		"core GNOME system"
V=			1.4.0.4
DISTNAME=		gnome-core-${V}
CATEGORIES=		x11
NEED_VERSION=   	1.455
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnome-core
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		glade.4::devel/libglade,gnome \
			gnome.36::x11/gnome/libs \
			ghttp.1::www/libghttp \
			gnomecanvaspixbuf.::graphics/gdk-pixbuf,gnome \
			capplet::x11/gnome/controlcenter

BUILD_DEPENDS=		scrollkeeper-config::textproc/scrollkeeper
RUN_DEPENDS=		scrollkeeper-config::textproc/scrollkeeper

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--with-kde-datadir=${LOCALBASE}/share
CONFIGURE_ARGS+= 	--with-kde-docdir=${LOCALBASE}/share
CONFIGURE_ARGS+= 	--localstatedir=/var/gnome
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-core; \
	cp -rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-core/

.include <bsd.port.mk>
