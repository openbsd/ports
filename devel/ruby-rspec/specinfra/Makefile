# $OpenBSD: Makefile,v 1.33 2015/05/09 08:06:32 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.31.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
