# $OpenBSD: Makefile,v 1.4 2005/12/09 16:01:01 aanriot Exp $

COMMENT=	"Atmel AVR 8-bit RISC microcontrollers' libc"

VER=		1.4.0
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
CONFIGURE_ARGS=		--host=avr

USE_GMAKE=		Yes

.include <bsd.port.mk>
