# $OpenBSD: Makefile,v 1.28 2017/01/03 18:54:49 shadchin Exp $

PKG_ARCH=		*

COMMENT=		python bindings for at-spi2

GNOME_PROJECT=		pyatspi
GNOME_VERSION=		2.20.2
PKGNAME=		py-atspi-${GNOME_VERSION}
REVISION=		0

HOMEPAGE=		https://wiki.linuxfoundation.org/en/AT-SPI_on_D-Bus

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=	examples/magFocusTracker.py

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/at-spi2-core

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

# connects to DBus
TEST_IS_INTERACTIVE=	x11

post-patch:
	cd ${WRKSRC}/pyatspi && mv enum.py enum_.py && \
	    perl -i -pe 's/pyatspi.enum/pyatspi.enum_/' *.py && \
	    perl -i -pe 's/enum.py/enum_.py/' Makefile.in

.include <bsd.port.mk>
