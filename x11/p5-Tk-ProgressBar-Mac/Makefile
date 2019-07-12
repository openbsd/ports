# $OpenBSD: Makefile,v 1.9 2019/07/12 20:51:18 sthen Exp $

COMMENT=	widget that looks just like a Mac OS 9 progress bar

DISTNAME=	Tk-ProgressBar-Mac-1.2
PKGNAME=	p5-${DISTNAME}
REVISION=	0
CATEGORIES=	x11 devel perl5

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tk/}

RUN_DEPENDS=	x11/p5-Tk
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

NO_TEST=	Yes

.include <bsd.port.mk>
