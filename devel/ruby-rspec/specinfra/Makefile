# $OpenBSD: Makefile,v 1.22 2015/01/19 09:11:28 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.11.5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
