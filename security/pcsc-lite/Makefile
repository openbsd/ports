# $OpenBSD: Makefile,v 1.15 2013/01/22 12:07:47 dcoppa Exp $

COMMENT=	resource manager for PC/SC

DISTNAME=	pcsc-lite-1.8.8
CATEGORIES=	security

SHARED_LIBS+=	pcsclite	1.0 # 1.0.0
SHARED_LIBS+=	pcscspy		0.0 # 0.0.0

HOMEPAGE=	http://pcsclite.alioth.debian.org/pcsclite.html

MASTER_SITES=	https://alioth.debian.org/frs/download.php/3862/

EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	David Coppa <dcoppa@openbsd.org>

# BSD and GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pthread usb-1.0

MODULES=		lang/python

LIB_DEPENDS=		devel/libusb1

MODPY_ADJ_FILES=	src/spy/pcsc-spy

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS=	--disable-libudev \
		--without-systemdsystemunitdir \
		--enable-libusb \
		--enable-confdir=${SYSCONFDIR}/ccid

CONFIGURE_ENV=	ac_cv_lib_lex='none needed'

NO_REGRESS=	Yes

.include <bsd.port.mk>
