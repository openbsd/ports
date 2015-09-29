# $OpenBSD: Makefile,v 1.47 2015/09/29 14:59:53 jasper Exp $

PORTROACH=	limitw:1,even

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.43.9

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
