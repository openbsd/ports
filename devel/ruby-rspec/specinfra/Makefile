# $OpenBSD: Makefile,v 1.30 2015/04/28 06:33:46 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.30.2

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
