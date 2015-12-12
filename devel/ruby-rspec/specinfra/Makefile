# $OpenBSD: Makefile,v 1.55 2015/12/12 11:55:08 jasper Exp $

PORTROACH=	limitw:1,even

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.44.7

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
