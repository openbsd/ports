# $OpenBSD: Makefile,v 1.21 2015/01/04 19:15:07 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.11.2

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
