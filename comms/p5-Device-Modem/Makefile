# $OpenBSD: Makefile,v 1.1.1.1 2004/08/03 14:46:22 todd Exp $

COMMENT=	"talk to modem devices connected via serial port"

DISTNAME=	Device-Modem-1.36
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	comms perl5

HOMEPAGE=	http://search.cpan.org/dist/Device-Modem/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/C/CO/COSIMO/}

BUILD_DEPENDS=	:p5-Device-SerialPort->=1:comms/p5-Device-SerialPort

USE_GMAKE=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
