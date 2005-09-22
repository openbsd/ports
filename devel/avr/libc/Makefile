# $OpenBSD: Makefile,v 1.2 2005/09/22 23:34:57 jsg Exp $

COMMENT=	"Atmel AVR 8-bit RISC microcontrollers' libc"

VER=		1.2.3
DISTNAME=	avr-libc-${VER}
PKGNAME=	${DISTNAME}p0

HOMEPAGE=	http://www.nongnu.org/avr-libc/

# Modified BSD License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://savannah.nongnu.org/download/avr-libc/

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
