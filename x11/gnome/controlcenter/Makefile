# $OpenBSD: Makefile,v 1.10 2001/10/16 17:01:44 espie Exp $

COMMENT=		"GNOME control center"
V=			1.4.0.1
DISTNAME=		control-center-${V}
CATEGORIES=		x11 x11/gnome
NEED_VERSION=   	1.473
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/control-center

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
                        patch-*

LIB_DEPENDS=		gnomecanvaspixbuf.::graphics/gdk-pixbuf,gnome \
			gnome.36,gnorba,gtkxmhtml::x11/gnome/libs \
			gnomevfs.::x11/gnome/vfs \
			Imlib,gdk_pixbuf::graphics/imlib

BUILD_DEPENDS=		::textproc/scrollkeeper
RUN_DEPENDS=		::textproc/scrollkeeper \
			::x11/gtk-engines

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--localstatedir=/var/gnome
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -loaf"

post-extract:
	@mv ${WRKSRC}/capplets/screensaver-properties/screensaver-desktops/Superquadrics.desktop.i \
	    ${WRKSRC}/capplets/screensaver-properties/screensaver-desktops/Superquadrics.desktop.in;

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/control-center; \
	cp -pR ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/control-center/

.include <bsd.port.mk>
