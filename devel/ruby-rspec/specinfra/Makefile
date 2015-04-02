# $OpenBSD: Makefile,v 1.24 2015/04/02 18:59:28 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.27.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
