# $OpenBSD: Makefile,v 1.14 2013/03/11 11:42:43 espie Exp $

COMMENT=	convert Pod documents into a simple object model form

MODULES=	cpan
DISTNAME=	Pod-POM-0.27
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-File-Slurp \
			devel/p5-Test-Differences

.include <bsd.port.mk>
