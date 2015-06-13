# $OpenBSD: Makefile,v 1.37 2015/06/13 13:18:51 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.35.1

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
