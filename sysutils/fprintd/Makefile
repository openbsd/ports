COMMENT-main=		fingerprint scanning functionality over D-Bus
COMMENT-pam=		PAM module for fprintd

V=			1.94.5
DISTNAME=		fprintd-v${V}
PKGNAME=		fprintd-${V}

CATEGORIES=    		sysutils

HOMEPAGE=		https://fprint.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=			https://gitlab.freedesktop.org/libfprint/fprintd/-/archive/v${V}/

MULTI_PACKAGES=		-main -pam

WANTLIB-main += c fprint-2 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-main += intl polkit-gobject-1

WANTLIB-pam += basu intl pam

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS-main=	security/libfprint2 \
			sysutils/polkit

LIB_DEPENDS-pam=	devel/gettext,-runtime \
			security/openpam \
			sysutils/basu

RUN_DEPENDS-main=	x11/dbus,-suid

RUN_DEPENDS-pam=	${BASE_PKGPATH}

CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS=		-Dsystemd=false \
			-Dlibsystemd=basu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fprintd/
	mv ${WRKINST}${SYSCONFDIR}/fprintd.conf \
		${PREFIX}/share/examples/fprintd/fprintd.conf

.include <bsd.port.mk>
