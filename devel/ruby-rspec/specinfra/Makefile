# $OpenBSD: Makefile,v 1.14 2014/11/25 10:29:30 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.6.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
