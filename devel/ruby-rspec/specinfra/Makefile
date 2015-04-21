# $OpenBSD: Makefile,v 1.29 2015/04/21 09:41:01 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.30.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
