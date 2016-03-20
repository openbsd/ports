# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:11 naddy Exp $

COMMENT=		create random people

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Data-RandomPerson-0.50
CATEGORIES=		databases

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =		devel/p5-Date-Calc \
			devel/p5-Data-Random

.include <bsd.port.mk>
