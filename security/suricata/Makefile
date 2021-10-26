# $OpenBSD: Makefile,v 1.44 2021/10/26 16:29:57 gonzalo Exp $

COMMENT =	high performance network IDS, IPS and security monitoring

SURICATA_V =	6.0.3
SUPDATE_V =	1.2.1

DISTNAME =	suricata-${SURICATA_V}
CATEGORIES =	security
SHARED_LIBS +=	htp                       0.0 # 2.0

HOMEPAGE =	https://suricata-ids.org/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES =	https://www.openinfosecfoundation.org/download/

# uses pledge()
WANTLIB +=  ${COMPILER_LIBCXX} c iconv jansson lz4 lzma m magic
WANTLIB +=  maxminddb net nspr4 nss3 nssutil3 pcap pcre plc4 plds4
WANTLIB +=  smime3 ssl3 yaml-0 z

MODULES =	lang/python

BUILD_DEPENDS =	textproc/py-sphinx${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		lang/rust

RUN_DEPENDS =	textproc/py-yaml${MODPY_FLAVOR}

LIB_DEPENDS =	archivers/lz4 \
		archivers/xz \
		converters/libiconv \
		devel/jansson \
		devel/nspr \
		devel/libyaml \
		devel/libmagic \
		devel/pcre \
		net/libnet/1.1 \
		net/libmaxminddb \
		security/nss

COMPILER =	base-clang ports-gcc
DEBUG_PACKAGES = ${BUILD_PACKAGES}

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ENV =		ac_cv_path_HAVE_PDFLATEX= \
			ac_cv_path_HAVE_GIT_CMD= \
			CARGO_HOME=${WRKBUILD}/cargo-home

CONFIGURE_ARGS =	--disable-gccmarch-native \
			--enable-geoip \
			--enable-ipfw

SUBST_VARS =		VARBASE SURICATA_V SUPDATE_V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure \
		${WRKSRC}/doc/userguide/Makefile.in \
		${WRKSRC}/suricata-update/doc/Makefile \
		${WRKSRC}/suricata-update/suricata/update/config.py \
		${WRKSRC}/suricata-update/suricata/update/parsers.py
	# prevent generating revision.py
	rm -rf ${WRKSRC}/suricata-update/.git

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/*.config ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/suricata.yaml ${PREFIX}/share/examples/suricata
	# nothing particularly useful in there as of 6.0.1
	rm -r ${PREFIX}/share/doc/suricata

.include <bsd.port.mk>
