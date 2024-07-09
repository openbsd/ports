PORTROACH =	limitw:^3\.6\.

# DB upgrades are only supported across one major version.
#
# If removing this version, we'll either need to add a "one major version"
# upgrade instead (3.6->4.0->4.2->4.4) or provide some docs on how to
# dump/restore using mongodump from databases/mongo-tools.
V =		3.6.23
REVISION =	5

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_system-mt
WANTLIB += c crypto execinfo
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
