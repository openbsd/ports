# $OpenBSD: Makefile,v 1.8 2013/10/11 23:49:11 naddy Exp $

COMMENT=	wrapper to Slay::Maker that reads the rules from a file

DISTNAME=	Slay-Makefile-0.12
REVISION=	0
CATEGORIES=	devel
MODULES=	cpan

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-File-Copy-Recursive \
		devel/p5-Slay-Maker
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
