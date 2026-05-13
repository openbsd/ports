COMMENT=		library for counting CPU cycles

V=			20260105
DISTNAME=		libcpucycles-${V}
SHARED_LIBS+=		cpucycles	0.0	# 1.0
CATEGORIES=		misc
HOMEPAGE=		https://cpucycles.cr.yp.to/
SITES=			${HOMEPAGE}

MAINTAINER=		Miguel Landaeta <miguel@miguel.cc>

# Public-domain
PERMIT_PACKAGE=		Yes

WANTLIB+=		c m

# used for configure script
MODULES+=		lang/python
MODPY_RUNDEP=		No

NO_TEST=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix="${WRKINST}${PREFIX}" \
			--host="${MACHINE_ARCH}" \
			--soversion="${LIBcpucycles_VERSION}"
ALL_TARGET=
MAKE_FLAGS+=		LIBcpucycles_VERSION=${LIBcpucycles_VERSION}
FAKE_FLAGS=		DESTDIR=

# just pokes at linux procfs/sysfs
post-install:
	rm ${PREFIX}/bin/cpucycles-open \
		${PREFIX}/man/man1/cpucycles-open.1

.include <bsd.port.mk>
