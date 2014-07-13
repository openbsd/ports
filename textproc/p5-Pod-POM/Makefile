# $OpenBSD: Makefile,v 1.15 2014/07/13 00:04:56 jasper Exp $

COMMENT=	convert Pod documents into a simple object model form

MODULES=	cpan
DISTNAME=	Pod-POM-0.29
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-File-Slurp \
			devel/p5-Test-Differences

.include <bsd.port.mk>
