# $OpenBSD: Makefile,v 1.1.1.1 2004/08/03 14:44:18 todd Exp $

SHARED_ONLY=	Yes

COMMENT=	"talk to modem devices connected via serial port"

DISTNAME=	Device-SerialPort-1.000002
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5

HOMEPAGE=	http://search.cpan.org/dist/Device-SerialPort/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/C/CO/COOK/}

USE_GMAKE=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
