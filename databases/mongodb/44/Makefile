PORTROACH =	limitw:1,even

V =		4.4.29
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_log-mt
WANTLIB += boost_program_options-mt  boost_system-mt boost_thread-mt
WANTLIB += c crypto curl execinfo icudata icui18n icuuc kvm m
WANTLIB += pcre pcrecpp snappy ssl stemmer yaml-cpp z zstd

MODSCONS_ENV +=	  PREFIX="${PREFIX}"
MODSCONS_FLAGS += --use-system-zstd

ALL_TARGET =	install-core
LIB_DEPENDS =	archivers/zstd \
		net/curl

BUILD_DEPENDS =	sysutils/py-psutil${MODPY_FLAVOR}

post-extract:
	cd ${WRKSRC}/src/third_party/mozjs-60/platform/x86_64/ && cp -R freebsd openbsd
	rm -r ${WRKSRC}/src/mongo/db/modules/enterprise

do-install:
.for bin in mongo mongod mongos
	${INSTALL_PROGRAM} ${WRKSRC}/build/opt/mongo/${bin} ${PREFIX}/bin
	if [ -f ${WRKSRC}/debian/${bin}.1 ]; then \
	  ${INSTALL_MAN} ${WRKSRC}/debian/${bin}.1 ${PREFIX}/man/man1; \
	fi
.endfor
	${INSTALL_MAN} ${WRKSRC}/debian/mongodb-parameters.5 ${PREFIX}/man/man5

do-test:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
	    ${MODSCONS_ENV} ${MODSCONS_FLAGS} install-unittests
	cd ${WRKSRC} && ${MODPY_BIN} buildscripts/resmoke.py run \
	    --suites=unittests

.include <bsd.port.mk>
