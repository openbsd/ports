# $OpenBSD: Makefile,v 1.40 2015/06/30 19:39:23 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.36.6

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
