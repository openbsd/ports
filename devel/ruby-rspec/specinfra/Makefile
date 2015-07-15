# $OpenBSD: Makefile,v 1.42 2015/07/15 00:17:07 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.37.5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
