# $OpenBSD: Makefile,v 1.33 2019/07/12 20:49:04 sthen Exp $

COMMENT=		library for fingerprint reader devices

DISTNAME=		libfprint-0.8.2

CATEGORIES=    		security

SHARED_LIBS += fprint                    2.0 # 0.0.0

HOMEPAGE=		https://fprint.freedesktop.org/
MASTER_SITES=		https://gitlab.freedesktop.org/libfprint/libfprint/uploads/4272fab4f37516db5b20d07bb576a4b1/
EXTRACT_SUFX=		.tar.xz

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += glib-2.0 intl m nspr4 nss3 nssutil3 pixman-1 plc4 plds4
WANTLIB += usb-1.0

MODULES=		devel/meson

LIB_DEPENDS=		devel/glib2 \
			devel/libusb1 \
			security/nss

CONFIGURE_ENV=		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS=		-Ddoc=false \
			-Dudev_rules=false

CFLAGS +=		-DENODATA=ENOENT \
			-DETIME=ETIMEDOUT

.include <bsd.port.mk>
