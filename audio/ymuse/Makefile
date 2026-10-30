COMMENT=		GTK front-end for MPD

MODGO_MODNAME=		github.com/yktoo/ymuse
MODGO_VERSION=		v0.22
DISTNAME=		ymuse-${MODGO_VERSION}

# XXX
# go list -m ${MODGO_MODNAME}@$(git ls-remote --tags https://${MODGO_MODNAME} | grep ${MODGO_VERSION} | awk '{ print $1 }')
MODGO_VERSION=		v0.0.0-20231004142029-b7b01d9db61a
PKGNAME=		ymuse-0.22

REVISION=		1

CATEGORIES=		audio x11

HOMEPAGE=		https://yktoo.com/en/software/ymuse/

# Apache-2.0
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 harfbuzz intl pango-1.0 pangocairo-1.0 pthread

MODULES=		lang/go

LIB_DEPENDS=		x11/gtk+3

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+4,-guic

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,icons,metainfo}
	cp -R ${WRKSRC}/resources/icons/* ${PREFIX}/share/icons/
	${INSTALL_DATA} \
		${WRKSRC}/resources/metainfo/com.yktoo.ymuse.metainfo.xml \
		${PREFIX}/share/metainfo/
	${INSTALL_DATA} ${WRKSRC}/resources/com.yktoo.ymuse.desktop \
		${PREFIX}/share/applications/
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/{applications,icons,metainfo}/*

.include "modules.inc"

.include <bsd.port.mk>
