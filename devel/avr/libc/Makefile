# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:01 espie Exp $

COMMENT=	libc for Atmel AVR 8-bit RISC microcontrollers

DISTNAME=	avr-libc-1.7.1

HOMEPAGE=	http://www.nongnu.org/avr-libc/

# Modified BSD License
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=avr-libc/}

EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		devel/avr/binutils \
			devel/avr/gcc

BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_ENV=		CC=avr-gcc PREFIX="${PREFIX}"
CONFIGURE_ARGS=		--host=avr --disable-versioned-doc

USE_GMAKE=		Yes

.include <bsd.port.mk>
