PORTROACH =	limit:^4\.4\.

# override ../Makefile.inc; 4.4 build fails on aarch64
ONLY_FOR_ARCHS = amd64

V =		4.4.30
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_log-mt
WANTLIB += boost_program_options-mt  boost_system-mt boost_thread-mt
WANTLIB += c crypto execinfo icudata icui18n icuuc kvm m
WANTLIB += pcre pcrecpp snappy ssl stemmer yaml-cpp z zstd

MODSCONS_ENV +=	  PREFIX="${PREFIX}"
MODSCONS_FLAGS += --disable-warnings-as-errors
MODSCONS_FLAGS += --use-system-zstd
MODSCONS_FLAGS += --use-system-pcre

ALL_TARGET =	install-core
LIB_DEPENDS =	archivers/zstd \
		devel/pcre

post-extract:
	cd ${WRKSRC}/src/third_party/mozjs-60/platform/x86_64/ && cp -R freebsd openbsd
	rm -rf ${WRKSRC}/src/mongo/db/modules/enterprise

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
