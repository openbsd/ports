PORTROACH =	limitw:^3\.6\.

# db upgrades are only supported across one major version (3.2-3.4,
# 3.4-3.6, 3.6-4.0, etc) and mongodump wasn't in ports until after
# OpenBSD-7.1, so holding off on >3.6 until after OpenBSD 7.2.
V =		3.6.23
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_system-mt
WANTLIB += c crypto execinfo icudata icui18n icuuc
WANTLIB += kvm m pcre pcrecpp snappy ssl stemmer yaml-cpp z

PATCH_LIST =	patch-* python3-*

CXXFLAGS +=	-Wno-c++17-extensions

MODSCONS_FLAGS += --prefix="${PREFIX}"

ALL_TARGET =	core tools

do-install:
.for bin in mongo mongod mongos mongobridge mongoperf
	${INSTALL_PROGRAM} ${WRKSRC}/${bin} ${PREFIX}/bin/
	if [ -f ${WRKSRC}/debian/${bin}.1 ]; then \
	  ${INSTALL_MAN} ${WRKSRC}/debian/${bin}.1 ${PREFIX}/man/man1; \
	fi
.endfor

do-test:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
	    ${MODSCONS_ENV} ${MODSCONS_FLAGS} unittests
	cd ${WRKSRC} && ${MODPY_BIN} buildscripts/resmoke.py --suites=unittests

.include <bsd.port.mk>
