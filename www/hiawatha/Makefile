COMMENT =		secure webserver
DISTNAME =		hiawatha-11.6
CATEGORIES =		www net

HOMEPAGE =		https://hiawatha.leisink.net/

# GPLv2 only
PERMIT_PACKAGE =	mbedtls Apache 2 license incompatible with GPLv2

SITES =			${HOMEPAGE}files/

WANTLIB += c pthread xml2 xslt z

MODULES =		devel/cmake

LIB_DEPENDS =		textproc/libxslt

CONFIGURE_ARGS =	-DWEBROOT_DIR="/var/hiawatha" \
			-DWORK_DIR="/var/db/hiawatha" \
			-DCONFIG_DIR="${SYSCONFDIR}/hiawatha" \
			-DLOG_DIR="/var/log/hiawatha" \
			-DCMAKE_INSTALL_MANDIR="${PREFIX}/man" \
			-DENABLE_XSLT=ON \
			-DPID_DIR="/var/run" \
			-DUSE_SHARED_MBEDTLS_LIBRARY=OFF \
			-DUSE_STATIC_MBEDTLS_LIBRARY=ON \
			-DMBEDTLS_FATAL_WARNINGS=OFF

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/mbedtls/library -L${LOCALBASE}/lib"

NO_TEST =		Yes

.if ${MACHINE_ARCH:Mi386}
CFLAGS += -mpclmul -msse2 -maes
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config/hiawatha.conf.in \
		${WRKSRC}/config/cgi-wrapper.conf \
		${WRKSRC}/man/hiawatha.1.in

post-install:
	mv ${WRKINST}${SYSCONFDIR}/hiawatha ${PREFIX}/share/examples/hiawatha
	mv ${WRKINST}/var/hiawatha/index.html ${PREFIX}/share/examples/hiawatha/
	rm -r ${WRKINST}/var \
		${PREFIX}/lib/hiawatha \
		${PREFIX}/include/{psa,mbedtls}

.include <bsd.port.mk>
