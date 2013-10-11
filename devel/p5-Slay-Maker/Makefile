# $OpenBSD: Makefile,v 1.8 2013/10/11 23:49:11 naddy Exp $

COMMENT=	perl make engine using perl code for rules

DISTNAME=	Slay-Maker-0.07
REVISION=	1
CATEGORIES=	devel
MODULES=	cpan

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Std \
		devel/p5-IPC-Run
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
