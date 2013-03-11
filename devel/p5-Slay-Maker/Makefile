# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:21 espie Exp $

COMMENT=	perl make engine using perl code for rules

DISTNAME=	Slay-Maker-0.07
REVISION=	1
CATEGORIES=	devel
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Std \
		devel/p5-IPC-Run
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
