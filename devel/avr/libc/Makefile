# $OpenBSD: Makefile,v 1.5 2006/02/05 22:43:01 jsg Exp $

COMMENT=	"Atmel AVR 8-bit RISC microcontrollers' libc"

VER=		1.4.3
DISTNAME=	avr-libc-${VER}

HOMEPAGE=	http://www.nongnu.org/avr-libc/

# Modified BSD License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://savannah.nongnu.org/download/avr-libc/

EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS+=		::devel/avr/binutils \
			::devel/avr/gcc

RUN_DEPENDS+=		${BUILD_DEPENDS}

CONFIGURE_ENV=		CC=avr-gcc PREFIX="${PREFIX}"
CONFIGURE_ARGS=		--host=avr --disable-versioned-doc

USE_GMAKE=		Yes

.include <bsd.port.mk>
