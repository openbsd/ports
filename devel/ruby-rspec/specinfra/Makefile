# $OpenBSD: Makefile,v 1.23 2015/03/19 08:04:25 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.19.6

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
