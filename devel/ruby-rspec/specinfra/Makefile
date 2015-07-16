# $OpenBSD: Makefile,v 1.43 2015/07/16 04:40:33 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.37.6

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
