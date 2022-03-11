COMMENT=		VirtualBox client with remote management

DISTNAME=		RemoteBox-3.1
PKGNAME=		${DISTNAME:L}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		sysutils x11 emulators

HOMEPAGE=		http://remotebox.knobgoblin.org.uk/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://remotebox.knobgoblin.org.uk/downloads/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/xdg-utils \
			www/p5-SOAP-Lite \
			x11/freerdp \
			x11/p5-Gtk3

pre-configure:
	${SUBST_CMD} ${WRKSRC}/remotebox

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}
	${INSTALL_SCRIPT} ${WRKSRC}/remotebox ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/packagers-readme/remotebox.desktop \
		${PREFIX}/share/applications/
	cd ${PREFIX}/share/pixmaps && \
		ln -sf ${TRUEPREFIX}/share/remotebox/icons/remotebox.png
	cp -Rp ${WRKSRC}/share/remotebox ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/remotebox

.include <bsd.port.mk>
