PORTROACH=	limitw:1,even

BROKEN=		SIGSEGV or SIGILL at runtime unless --noscripting is used

V=		8.0.12

# mozjs tag comes from ${WRKSRC}/src/third_party/mozjs/get-sources.sh
MOZJS_TAG=	5acd3be6c9563ad3e7ca6182285c69a38de47bab
DIST_TUPLE=	github mongodb-forks spidermonkey ${MOZJS_TAG} \
		    src/third_party/mozjs/mozilla-release

WANTLIB += ${COMPILER_LIBCXX} boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_log-mt boost_program_options-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto curl execinfo icudata icui18n
WANTLIB += icuuc kvm m snappy ssl stemmer yaml-cpp z zstd

BUILD_DEPENDS+=	databases/py-mongo \
		devel/py-gitpython \
		devel/py-retry2 \
		sysutils/py-distro \
		www/py-requests

LIB_DEPENDS+=	archivers/zstd \
		net/curl

MODSCONS_ENV=	PREFIX="${PREFIX}"

MODSCONS_FLAGS=	--allocator=system \
		--cxx-std=20 \
		--disable-warnings-as-errors \
		--libc++ \
		--runtime-hardening=on \
		--ssl \
		--use-system-snappy \
		--use-system-stemmer \
		--use-system-yaml \
		--use-system-zlib \
		--use-system-zstd \
		AR=ar \
		VERBOSE=on

ALL_TARGET=	install-core

CXXFLAGS +=	-Wno-error=deprecated-builtins -Wno-error=unused-variable

post-extract:
	cd ${WRKSRC}/src/third_party/mozjs; \
	if ! grep -q ^LIB_GIT_REVISION=${MOZJS_TAG}$$ get-sources.sh; then \
		echo "bad MOZJS_TAG; should match `grep ^LIB_GIT_REVISION get-sources.sh`"; \
	fi
	rm -rf ${WRKSRC}/src/third_party/{libstemmer_c,yaml-cpp,zlib-*,zstandard,snappy-*}
	cd ${WRKSRC}/src/third_party/mozjs/platform/x86_64/ && cp -R linux openbsd
	cd ${WRKSRC}/src/third_party/mozjs/platform/aarch64/ && cp -R linux openbsd

do-install:
.for bin in mongod mongos
	${INSTALL_PROGRAM} ${WRKSRC}/build/install/usr/local/bin/${bin} \
		${PREFIX}/bin
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
