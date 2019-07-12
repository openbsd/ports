# $OpenBSD: Makefile,v 1.20 2019/07/12 20:50:05 sthen Exp $

COMMENT=	convert Pod documents into a simple object model form

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Pod-POM-2.01
CATEGORIES=	textproc

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-File-Slurper \
			devel/p5-Test-Differences

.include <bsd.port.mk>
