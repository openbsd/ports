# $OpenBSD: Makefile,v 1.16 2014/12/06 10:26:31 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.10.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
