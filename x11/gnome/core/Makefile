# $OpenBSD: Makefile,v 1.10 2001/11/30 09:18:42 wilfried Exp $

COMMENT=		"core GNOME system"
V=			1.4.0.4
DISTNAME=		gnome-core-${V}
CATEGORIES=		x11 x11/gnome
NEED_VERSION=   	1.498
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnome-core
EXTRACT_SUFX=		.tar.bz2

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
                        patch-*

LIB_DEPENDS=		glade.4,glade-gnome::devel/libglade,gnome \
			gnome.36,gnorba,zvt::x11/gnome/libs \
			ghttp.1::www/libghttp \
			gnomecanvaspixbuf,gdk_pixbuf::graphics/gdk-pixbuf,gnome \
			capplet::x11/gnome/controlcenter

BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper

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
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-core/

.include <bsd.port.mk>
