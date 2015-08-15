# $OpenBSD: Makefile,v 1.44 2015/08/15 08:33:49 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.40.2

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
