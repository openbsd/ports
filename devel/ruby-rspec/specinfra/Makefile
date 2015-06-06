# $OpenBSD: Makefile,v 1.35 2015/06/06 11:09:44 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.34.6

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
