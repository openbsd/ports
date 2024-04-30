# uses the rust "libc" crate, version 0.2.107 (needs at least 0.2.113)
NOT_FOR_ARCHS =	powerpc64 riscv64

COMMENT =	high performance network IDS, IPS and security monitoring

SURICATA_V =	7.0.5
SUPDATE_V =	1.3.3

DISTNAME =	suricata-${SURICATA_V}
CATEGORIES =	security
SHARED_LIBS +=	htp                       0.1 # 2.0

HOMEPAGE =	https://suricata.io/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>, \
		Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

SITES =		https://www.openinfosecfoundation.org/download/

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} ${MODRUST_WANTLIB}
WANTLIB += elf iconv jansson lz4 m magic maxminddb
WANTLIB += net pcap pcre2-8 yaml-0 z

MODULES =	lang/python \
		lang/rust

BUILD_DEPENDS =	devel/py-setuptools${MODPY_FLAVOR} \
		textproc/py-sphinx${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

RUN_DEPENDS =	textproc/py-yaml${MODPY_FLAVOR}

LIB_DEPENDS =	archivers/lz4 \
		converters/libiconv \
		devel/jansson \
		devel/libyaml \
		devel/libmagic \
		devel/pcre2 \
		net/libnet/1.1 \
		net/libmaxminddb

COMPILER =	base-clang ports-gcc
DEBUG_PACKAGES = ${BUILD_PACKAGES}

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.71

CONFIGURE_ENV =		ac_cv_path_HAVE_PDFLATEX= \
			ac_cv_path_HAVE_GIT_CMD= \
			ac_cv_path_CBINDGEN= \
			CARGO_HOME=${WRKBUILD}/cargo-home

# prevent textproc/hyperscan from being picked up
CONFIGURE_ENV +=	ac_cv_header_hs_h=no \
			libhs_CFLAGS=-I${LOCALBASE}/include \
			libhs_LIBS=-L${LOCALBASE}/lib

CONFIGURE_ARGS =	--disable-gccmarch-native \
			--enable-geoip \
			--enable-ipfw

SUBST_VARS =		SURICATA_V SUPDATE_V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/suricata.yaml.in \
		${WRKSRC}/suricata-update/suricata/update/config.py \
		${WRKSRC}/suricata-update/suricata/update/parsers.py
	# prevent generating revision.py
	rm -rf ${WRKSRC}/suricata-update/.git

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/*.config ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/suricata.yaml ${PREFIX}/share/examples/suricata
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/suricata/python/
	# nothing particularly useful in there as of 6.0.1
	rm -r ${PREFIX}/share/doc/suricata

.include <bsd.port.mk>
