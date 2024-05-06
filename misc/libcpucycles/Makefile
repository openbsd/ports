COMMENT=		library for counting CPU cycles

V=			20230115
DISTNAME=		libcpucycles-${V}
SHARED_LIBS+=		cpucycles	0.0	# 1.0
CATEGORIES=		misc
HOMEPAGE=		https://cpucycles.cr.yp.to/
SITES=			${HOMEPAGE}
REVISION=		0

MAINTAINER=		Miguel Landaeta <miguel@miguel.cc>

# Public-domain
PERMIT_PACKAGE=		Yes

WANTLIB+=		c m
MODULES+=		lang/python
MODPY_RUNDEP=		No

NO_TEST=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix="${WRKINST}${PREFIX}" \
			--host="${MACHINE_ARCH}" \
			--soversion="${LIBcpucycles_VERSION}"
ALL_TARGET=
MAKE_FLAGS+=		LIBcpucycles_VERSION=${LIBcpucycles_VERSION}

.include <bsd.port.mk>
