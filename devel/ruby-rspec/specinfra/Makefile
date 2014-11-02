# $OpenBSD: Makefile,v 1.13 2014/11/02 14:18:36 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.4.2

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
