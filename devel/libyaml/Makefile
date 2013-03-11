# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:11 espie Exp $

COMMENT=	YAML 1.1 parser and emitter written in C

DISTNAME=	yaml-0.1.2
PKGNAME=	lib${DISTNAME}
CATEGORIES=	devel

SHARED_LIBS=	yaml-0	0.0	# 1.0
SHARED_LIBS+=	yaml	0.0	# 1.0

HOMEPAGE=	http://pyyaml.org/wiki/LibYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pyyaml.org/download/libyaml/

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
