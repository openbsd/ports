COMMENT=	data receiver for rtl-sdr devices

GH_ACCOUNT =	merbanan
GH_PROJECT =	rtl_433
GH_TAGNAME =	25.12

CATEGORIES =	comms

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	c m pthread usb-1.0 crypto rtlsdr ssl

MODULES =	devel/cmake
LIB_DEPENDS =	comms/rtl-sdr \
		devel/libusb1

CONFIGURE_ARGS = -DCMAKE_INSTALL_SYSCONFDIR=${SYSCONFDIR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/man1/rtl_433.1

post-install:
	mv ${WRKINST}/etc/rtl_433 ${PREFIX}/share/examples/rtl_433

.include <bsd.port.mk>
