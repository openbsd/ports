# $OpenBSD: Makefile,v 1.73 2016/12/17 12:07:18 jasper Exp $

PORTROACH=	limitw:1,even

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.66.3

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
