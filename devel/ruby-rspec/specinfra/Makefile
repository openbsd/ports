# $OpenBSD: Makefile,v 1.31 2015/05/04 07:22:07 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.30.3

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
