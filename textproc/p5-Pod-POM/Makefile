# $OpenBSD: Makefile,v 1.19 2016/03/20 19:57:07 naddy Exp $

COMMENT=	convert Pod documents into a simple object model form

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Pod-POM-2.01
CATEGORIES=	textproc

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-File-Slurper \
			devel/p5-Test-Differences

.include <bsd.port.mk>
