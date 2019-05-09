# $OpenBSD: Makefile,v 1.13 2019/05/09 11:23:53 sthen Exp $

COMMENT=	YAML 1.1 parser and emitter written in C

DISTNAME=	yaml-0.2.2
PKGNAME=	lib${DISTNAME}
WRKDIST=	${WRKDIR}/${PKGNAME}
CATEGORIES=	devel

SHARED_LIBS=	yaml-0	0.0	# 1.0
SHARED_LIBS+=	yaml	0.0	# 1.0

HOMEPAGE=	https://pyyaml.org/wiki/LibYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://pyyaml.org/download/libyaml/

CONFIGURE_STYLE= gnu
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

do-gen:
	cd ${WRKSRC}; ${AUTOCONF_ENV} autoreconf -fvi

.include <bsd.port.mk>
