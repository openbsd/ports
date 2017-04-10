# $OpenBSD: Makefile,v 1.3 2017/04/10 11:46:33 sthen Exp $

COMMENT =		REINER SCT cyberJack chipcard reader driver

DISTNAME =		pcsc-cyberjack-3.99.5final.SP08

SHARED_LIBS =		ifd-cyberjack		0.0 # 6.0

CATEGORIES =		security

HOMEPAGE =		https://www.reiner-sct.com/support/download/treiber-und-software/cyberjack/chip-linux.html

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# LGPL2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread ${LIBCXX} usb-1.0

MASTER_SITES =		http://support.reiner-sct.de/downloads/LINUX/V3.99.5_SP08/

EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/libtool \
			security/pcsc-lite
RUN_DEPENDS =		security/pcsc-lite
LIB_DEPENDS =		devel/libusb1

MAKE_FLAGS =		CPPFLAGS=-I${LOCALBASE}/include

CONFIGURE_STYLE =	autoconf automake
CONFIGURE_ARGS +=	--disable-fox \
			--disable-xml2 \
			--enable-release

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.10

# Remove MSDOS line endings in files needing a patch
post-extract:
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' cjeca32/Debug.cpp \
		cjeca32/RSCTCriticalSection.cpp

post-patch:
	cd ${WRKSRC} && \
		libtoolize -f --copy && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		aclocal -I m4

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		automake --add-missing --copy

.include <bsd.port.mk>
