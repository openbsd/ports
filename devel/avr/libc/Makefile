# $OpenBSD: Makefile,v 1.23 2019/07/12 21:02:14 sthen Exp $

COMMENT=	libc for Atmel AVR 8-bit RISC microcontrollers

DISTNAME=	avr-libc-2.0.0

HOMEPAGE=	http://www.nongnu.org/avr-libc/

# Modified BSD License
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=avr-libc/}
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		devel/avr/binutils \
			devel/avr/gcc>=5.4.0

BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_ENV=		CC=avr-gcc PREFIX="${PREFIX}"
CONFIGURE_ARGS=		--host=avr \
			--disable-versioned-doc

USE_GMAKE=		Yes

.include <bsd.port.mk>
