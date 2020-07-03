# $OpenBSD: Makefile,v 1.5 2020/07/03 21:13:22 sthen Exp $

COMMENT=		GNOME Shell integration for Chrome

GNOME_PROJECT=		chrome-gnome-shell
GNOME_VERSION=		10.1
REVISION=		2

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/cmake \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

MODPY_ADJ_FILES=	connector/chrome-gnome-shell.py
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		textproc/jq

# base64(1)
BUILD_DEPENDS +=	converters/base64 

# ghead(1), sha256sum(1)
BUILD_DEPENDS +=	sysutils/coreutils

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			x11/gnome/shell

NO_TEST=		Yes

CONFIGURE_STYLE=	cmake
CONFIGURE_ARGS=		-DBUILD_EXTENSION=OFF \
			-DCMAKE_INSTALL_PREFIX=${TRUEPREFIX}

pre-configure:
	ln -sf ${LOCALBASE}/bin/ghead ${WRKDIR}/bin/head
	ln -sf ${LOCALBASE}/bin/gsha256sum ${WRKDIR}/bin/sha256sum

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/chrome-gnome-shell
	mv ${WRKINST}/etc/chromium \
		${PREFIX}/share/examples/chrome-gnome-shell/
	rm -r ${WRKINST}/etc/opt ${PREFIX}/lib/mozilla

.include <bsd.port.mk>
