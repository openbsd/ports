# $OpenBSD: Makefile,v 1.6 2013/03/11 11:46:14 espie Exp $

COMMENT=	capture standard error output, display in separate window

DISTNAME=	Tk-Stderr-1.2
PKGNAME=	p5-${DISTNAME}
REVISION=	0
CATEGORIES=	x11 devel perl5

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tk/}

RUN_DEPENDS=	x11/p5-Tk

CONFIGURE_STYLE= perl
USE_GROFF =	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
