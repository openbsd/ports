# $OpenBSD: Makefile,v 1.12 2014/10/28 12:25:53 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.4.1

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
