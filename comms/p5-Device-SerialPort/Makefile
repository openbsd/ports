# $OpenBSD: Makefile,v 1.3 2007/01/23 22:30:51 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"talk to modem devices connected via serial port"

DISTNAME=	Device-SerialPort-1.000002
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	comms
MODULES=	cpan

HOMEPAGE=	http://search.cpan.org/dist/Device-SerialPort/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if ${MACHINE_ARCH} == "sparc"
CONFIGURE_ARGS= TESTPORT=/dev/cuaa
.endif

.include <bsd.port.mk>
