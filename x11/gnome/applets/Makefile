# $OpenBSD: Makefile,v 1.20 2003/01/02 08:18:43 marcm Exp $

COMMENT=		"applets for use with the GNOME panel"

DISTNAME=		gnome-applets-1.4.0.5
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-applets/1.4/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		panel_applet::x11/gnome/core \
			gtop,gtop_common,gtop_sysdeps::devel/libgtop,gnome

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-applets; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-applets/

.include <bsd.port.mk>
