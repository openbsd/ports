# $OpenBSD: Makefile,v 1.3 2015/07/12 08:40:08 ajacoutot Exp $

COMMENT=		VirtualBox client with remote management

DISTNAME=		RemoteBox-2.0
PKGNAME=		${DISTNAME:L}

CATEGORIES=		sysutils

HOMEPAGE=		http://remotebox.knobgoblin.org.uk/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://remotebox.knobgoblin.org.uk/downloads/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/xdg-utils \
			www/p5-SOAP-Lite \
			x11/freerdp \
			x11/p5-Gtk2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/remotebox

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/remotebox
	${INSTALL_SCRIPT} ${WRKSRC}/remotebox ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/packagers-readme/remotebox.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/docs/remotebox.pdf \
		${PREFIX}/share/doc/remotebox
	cd ${PREFIX}/share/pixmaps && \
		ln -sf ${TRUEPREFIX}/share/remotebox/icons/remotebox.png
	cp -Rp ${WRKSRC}/share/remotebox ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/remotebox

.include <bsd.port.mk>
