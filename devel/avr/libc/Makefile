# $OpenBSD: Makefile,v 1.10 2008/10/01 04:56:57 ckuethe Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' libc

DISTNAME=	avr-libc-1.6.2

HOMEPAGE=	http://www.nongnu.org/avr-libc/

# Modified BSD License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://savannah.nongnu.org/download/avr-libc/

EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		::devel/avr/binutils \
			::devel/avr/gcc

BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_ENV=		CC=avr-gcc PREFIX="${PREFIX}"
CONFIGURE_ARGS=		--host=avr --disable-versioned-doc

USE_GMAKE=		Yes

.include <bsd.port.mk>
