# $OpenBSD: Makefile,v 1.3 2007/01/23 22:30:51 espie Exp $

COMMENT=	"talk to modem devices connected via serial port"

DISTNAME=	Device-Modem-1.43
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	comms

MODULES=	cpan
HOMEPAGE=	http://search.cpan.org/dist/Device-Modem/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:p5-Device-SerialPort->=1:comms/p5-Device-SerialPort

.include <bsd.port.mk>
