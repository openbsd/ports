# $OpenBSD: Makefile,v 1.10 2014/10/20 19:08:40 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.3.2

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
