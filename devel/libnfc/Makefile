COMMENT =		library supporting Near Field Communication (NFC) devices

VERSION =		1.8.0
DISTNAME =		libnfc-${VERSION}

SHARED_LIBS +=		nfc      0.0 # 6.0

CATEGORIES =		devel

HOMEPAGE =		http://nfc-tools.org/index.php?title=Libnfc

MAINTAINER=		Denis Bodor <dbodor@lefinnois.net>

# LGPL 3.0
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/nfc-tools/libnfc/releases/download/libnfc-${VERSION}/
EXTRACT_SUFX =		.tar.bz2

WANTLIB +=		c curses pthread readline usb usb-1.0
LIB_DEPENDS +=		devel/libusb-compat

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-drivers=acr122s,arygon,pn532_uart,acr122_usb,pn53x_usb
SEPARATE_BUILD =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libnfc
	${INSTALL_DATA} ${WRKSRC}/libnfc.conf.sample \
		${PREFIX}/share/examples/libnfc

.include <bsd.port.mk>
