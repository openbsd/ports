# $OpenBSD: Makefile,v 1.67 2016/06/13 08:45:39 jasper Exp $

PORTROACH=	limitw:1,even

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.58.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
