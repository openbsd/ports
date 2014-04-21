# $OpenBSD: Makefile,v 1.6 2014/04/21 12:47:04 stsp Exp $

COMMENT =		high performance HTTP client library
DISTNAME =		serf-1.3.4
REVISION =		1
SHARED_LIBS = 		serf-1                    1.0 # 1.3.0
CATEGORIES =		net
HOMEPAGE =		https://code.google.com/p/serf/
MAINTAINER =		Stefan Sperling <stsp@openbsd.org>

# APLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		apr-1 aprutil-1 crypto db expat pthread ssl z
MASTER_SITES =		https://serf.googlecode.com/svn/src_releases/
EXTRACT_SUFX =		.tar.bz2

MODULES = 		converters/libiconv \
			devel/scons
LIB_DEPENDS =		devel/apr-util
MODSCONS_ENV=	CC="${CC}" \
		PREFIX="${PREFIX}" \
		DEBUG=0 \
		APR=${LOCALBASE}/bin/apr-1-config \
		APU=${LOCALBASE}/bin/apu-1-config

# XXX scons doesn't support x.y library versioning scheme, only x.y.z
post-patch:
	perl -pi -e \
		"s/'%d.%d.%d' % \(MAJOR, MINOR, 0\)/'${LIBserf-1_VERSION}.0'/" \
		${WRKSRC}/SConstruct
	
do-install:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${INSTALL_TARGET}
	mv ${PREFIX}/lib/libserf-1.so.${LIBserf-1_VERSION}.0 \
		${PREFIX}/lib/libserf-1.so.${LIBserf-1_VERSION}

.ifndef DEBUG
	strip ${PREFIX}/lib/libserf-1.a \
		${PREFIX}/lib/libserf-1.so.${LIBserf-1_VERSION}
.endif

do-test:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} check

.include <bsd.port.mk>
