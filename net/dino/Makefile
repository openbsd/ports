# $OpenBSD: Makefile,v 1.6 2021/10/11 09:31:25 kn Exp $

COMMENT=	XMPP desktop client
VERSION=	0.2.2
DISTNAME=	dino-${VERSION}
CATEGORIES=	net x11
REVISION=	0

SHARED_LIBS +=	dino                      0.0 # 0.0
SHARED_LIBS +=	qlite                     0.0 # 0.1
SHARED_LIBS +=	xmpp-vala                 0.0 # 0.1

HOMEPAGE=	https://dino.im/

MASTER_SITES=	https://github.com/dino/dino/releases/download/v${VERSION}/

MAINTAINER=	Paco Esteban <paco@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/gettext,-tools \
		lang/vala
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	x11/gtk+3 \
		devel/libgee \
		devel/libsoup \
		security/gpgme \
		security/libgcrypt \
		graphics/libqrencode \
		textproc/icu4c \
		net/libsignal-protocol-c

WANTLIB += assuan atk-1.0 c cairo cairo-gobject gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error gpgme
WANTLIB += gtk-3 harfbuzz icudata icuuc intl m pango-1.0 pangocairo-1.0
WANTLIB += qrencode signal-protocol-c soup-2.4 sqlite3

post-patch:
	${SUBST_CMD} ${WRKSRC}/libdino/CMakeLists.txt

.include <bsd.port.mk>
