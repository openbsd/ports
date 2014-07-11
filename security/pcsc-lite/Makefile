# $OpenBSD: Makefile,v 1.25 2014/07/11 16:44:05 dcoppa Exp $

COMMENT=	resource manager for PC/SC

V=		1.8.11
DISTNAME=	pcsc-lite-${V}
CATEGORIES=	security

SHARED_LIBS+=	pcsclite	1.0 # 1.0.0
SHARED_LIBS+=	pcscspy		0.0 # 0.0.0

HOMEPAGE=	http://pcsclite.alioth.debian.org/pcsclite.html

MASTER_SITES=	https://alioth.debian.org/frs/download.php/latestfile/39/

EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	David Coppa <dcoppa@openbsd.org>

# BSD and GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pthread usb-1.0

MODULES=		lang/python

LIB_DEPENDS=		devel/libusb1

MODPY_ADJ_FILES=	src/spy/pcsc-spy

USE_GMAKE=	Yes

CONFIGURE_STYLE= autoconf

AUTOCONF_VERSION= 2.69

CONFIGURE_ARGS=	--disable-libudev \
		--without-systemdsystemunitdir \
		--enable-libusb \
		--enable-confdir=${SYSCONFDIR}/ccid

CONFIGURE_ENV=	ac_cv_lib_lex='none needed'

TEST_DEPENDS=	${BUILD_PKGPATH}=${V} \
		security/ccid

# The pcscd server needs to be up and running
TEST_IS_INTERACTIVE= Yes

do-test:
	${WRKBUILD}/src/testpcsc

.include <bsd.port.mk>
