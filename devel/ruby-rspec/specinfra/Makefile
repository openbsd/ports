# $OpenBSD: Makefile,v 1.28 2015/04/20 20:29:09 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.28.2
REVISION=	1

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
