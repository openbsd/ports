# $OpenBSD: Makefile,v 1.20 2014/12/22 12:30:32 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.10.4

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
