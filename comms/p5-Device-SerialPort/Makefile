# $OpenBSD: Makefile,v 1.2 2005/11/29 02:43:23 pvalchev Exp $

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

.if ${MACHINE_ARCH} == "sparc"
CONFIGURE_ARGS= TESTPORT=/dev/cuaa
.endif

.include <bsd.port.mk>
