# $OpenBSD: Makefile,v 1.16 2002/05/15 18:05:19 espie Exp $

COMMENT=		"GNOME control center"

DISTNAME=		control-center-1.4.0.4
CATEGORIES=		x11 x11/gnome
NEED_VERSION=   	1.504
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/control-center/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		gdk_pixbuf::graphics/gdk-pixbuf \
			gnomecanvaspixbuf::graphics/gdk-pixbuf,-gnome \
			gnome.36,gnorba,gtkxmhtml::x11/gnome/libs \
			gnomevfs.::x11/gnome/vfs

BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:gtk-engines->=0.12:x11/gtk-engines

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--localstatedir=/var/gnome
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@cd ${WRKSRC}/control-center; ../xml-i18n-merge ../po gnomecc.desktop.in gnomecc.desktop -d -p

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/control-center; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/control-center/

.include <bsd.port.mk>
