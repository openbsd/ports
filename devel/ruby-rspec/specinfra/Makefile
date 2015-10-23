# $OpenBSD: Makefile,v 1.49 2015/10/23 20:36:05 jasper Exp $

PORTROACH=	limitw:1,even

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.44.1

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
