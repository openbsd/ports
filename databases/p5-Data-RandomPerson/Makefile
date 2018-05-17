# $OpenBSD: Makefile,v 1.9 2018/05/17 09:20:08 espie Exp $

COMMENT=		create random people

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Data-RandomPerson-0.50
CATEGORIES=		databases
REVISION =		0

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =		devel/p5-Date-Calc \
			devel/p5-Data-Random

.include <bsd.port.mk>
