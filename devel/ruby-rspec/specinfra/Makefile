# $OpenBSD: Makefile,v 1.41 2015/07/02 11:27:24 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.36.10

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
