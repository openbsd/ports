# $OpenBSD: Makefile,v 1.20 2013/07/10 13:47:30 dcoppa Exp $

COMMENT=	resource manager for PC/SC

DISTNAME=	pcsc-lite-1.8.8
REVISION=	0
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

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS=	--disable-libudev \
		--without-systemdsystemunitdir \
		--enable-libusb \
		--enable-confdir=${SYSCONFDIR}/ccid

CONFIGURE_ENV=	ac_cv_lib_lex='none needed'

TEST_DEPENDS=	security/ccid

# The pcscd server needs to be up and running
TEST_IS_INTERACTIVE= Yes

do-test:
	${WRKBUILD}/src/testpcsc

.include <bsd.port.mk>
