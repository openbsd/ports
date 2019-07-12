# $OpenBSD: Makefile,v 1.15 2019/07/12 20:44:41 sthen Exp $

COMMENT=	YAML 1.1 parser and emitter written in C

DISTNAME=	yaml-0.2.2
PKGNAME=	lib${DISTNAME}
CATEGORIES=	devel

SHARED_LIBS=	yaml-0	0.0	# 1.0
SHARED_LIBS+=	yaml	0.0	# 1.0

HOMEPAGE=	https://pyyaml.org/wiki/LibYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://pyyaml.org/download/libyaml/

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
