# $OpenBSD: Makefile,v 1.7 2013/10/11 23:51:51 naddy Exp $

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

NO_TEST=	Yes

.include <bsd.port.mk>
