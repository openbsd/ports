# $OpenBSD: Makefile,v 1.16 2002/09/20 08:15:16 nino Exp $

COMMENT=		"applets for use with the GNOME panel"

DISTNAME=		gnome-applets-1.4.0.5
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/
MAINTAINER=		Nils Nordman <nino@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-applets/1.4/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		${BUILD_DEPENDS}
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
