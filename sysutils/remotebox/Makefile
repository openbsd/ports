# $OpenBSD: Makefile,v 1.13 2021/11/09 12:15:33 ajacoutot Exp $

COMMENT=		VirtualBox client with remote management

DISTNAME=		RemoteBox-2.8
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
