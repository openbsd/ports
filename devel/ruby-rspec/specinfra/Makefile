# $OpenBSD: Makefile,v 1.11 2014/10/25 10:30:53 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.4.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
