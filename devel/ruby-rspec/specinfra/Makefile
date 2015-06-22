# $OpenBSD: Makefile,v 1.39 2015/06/22 07:51:48 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.36.1

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
