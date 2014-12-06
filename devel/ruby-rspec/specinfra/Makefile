# $OpenBSD: Makefile,v 1.17 2014/12/06 10:58:42 jasper Exp $

COMMENT=	common layer for serverspec and configspec
DISTNAME=	specinfra-2.10.0
REVISION=	0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-scp,${MODRUBY_FLAVOR} \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
