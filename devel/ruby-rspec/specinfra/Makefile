# $OpenBSD: Makefile,v 1.18 2014/12/08 08:55:38 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.10.1

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
