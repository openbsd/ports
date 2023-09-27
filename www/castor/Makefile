COMMENT=		graphical browser for plain-text protocols

V=			0.9.0
DISTNAME=		castor-${V}
REVISION =		3

DISTFILES=		castor-{castor/archive/}${V}${EXTRACT_SUFX}

CATEGORIES=		www

HOMEPAGE=		https://git.sr.ht/~julienxx/castor

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += c c++abi crypto gdk-3 glib-2.0 gobject-2.0 gtk-3 pthread
WANTLIB += ssl

SITES=			https://git.sr.ht/~julienxx/

MODULES=		devel/cargo

CONFIGURE_STYLE=	cargo

LIB_DEPENDS=		x11/gtk+3

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+4,-guic

.include "crates.inc"

post-install:
.for i in 16 32 64 128
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/$ix$i/apps
	${INSTALL_DATA} ${WRKSRC}/data/org.typed-hole.castor-$i.png \
		${PREFIX}/share/icons/hicolor/$ix$i/apps/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/data/org.typed-hole.castor.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/Castor.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
