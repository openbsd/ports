# $OpenBSD: Makefile,v 1.3 2005/10/01 19:30:00 martin Exp $

COMMENT=	"Atmel AVR 8-bit RISC microcontrollers' libc"

VER=		1.2.5
DISTNAME=	avr-libc-${VER}

HOMEPAGE=	http://www.nongnu.org/avr-libc/

# Modified BSD License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://savannah.nongnu.org/download/avr-libc/ \
			http://people.freebsd.org/~joerg/

EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS+=		::devel/avr/binutils \
			::devel/avr/gcc

RUN_DEPENDS+=		${BUILD_DEPENDS}

CONFIGURE_ENV+=		CC=avr-gcc PREFIX="${PREFIX}"
CONFIGURE_SCRIPT=	doconf

USE_GMAKE=		Yes

do-build:
	(cd ${WRKSRC}; ./domake MAKE=${GMAKE})

do-install:
	(cd ${WRKSRC}; ./domake MAKE=${GMAKE} install)

.include <bsd.port.mk>
