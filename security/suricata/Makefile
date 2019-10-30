# $OpenBSD: Makefile,v 1.25 2019/10/30 12:41:46 jasper Exp $

COMMENT =	high performance network IDS, IPS and security monitoring

SURICATA_V =	5.0.0
SUPDATE_V =	1.1.0

DISTNAME =	suricata-${SURICATA_V}
CATEGORIES =	security
SHARED_LIBS +=	htp                       0.0 # 2.0

HOMEPAGE =	https://suricata-ids.org/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org> \
		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES =	https://www.openinfosecfoundation.org/download/

# uses pledge()
WANTLIB +=	${COMPILER_LIBCXX} c iconv jansson lz4 lzma m magic
WANTLIB +=	net nspr4 nss3 nssutil3 pcap pcre plc4 plds4 smime3
WANTLIB +=	ssl3 yaml-0 z

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	textproc/py-sphinx,python3 \
		textproc/py-yaml,python3 \
		lang/rust

RUN_DEPENDS =	textproc/py-yaml,python3

LIB_DEPENDS =	archivers/lz4 \
		archivers/xz \
		converters/libiconv \
		devel/jansson \
		devel/nspr \
		devel/libyaml \
		devel/libmagic \
		devel/pcre \
		net/libnet/1.1 \
		security/nss

COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		ac_cv_path_HAVE_PDFLATEX= \
			ac_cv_path_HAVE_GIT_CMD= \
			CARGO_HOME=${WRKBUILD}/cargo-home

CONFIGURE_ARGS =	--disable-gccmarch-native \
			--enable-ipfw

SUBST_VARS =		VARBASE SURICATA_V SUPDATE_V

post-patch:
	# permit patching libc-rs to support sparc64 (could be removed with libc>=0.2.63)
	sed -i 's/"files":{[^}]*}/"files":{}/' \
		${WRKSRC}/rust/vendor/libc/.cargo-checksum.json

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/suricata/rules
	${INSTALL_DATA} ${WRKSRC}/*.config ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/suricata.yaml ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/rules/*.rules ${PREFIX}/share/examples/suricata/rules
	rm ${PREFIX}/share/doc/suricata/{*.txt,GITGUIDE,INSTALL*}
	${INSTALL_DATA} ${WRKSRC}/doc/{AUTHORS,NEWS,README,TODO} \
		${PREFIX}/share/doc/suricata

.include <bsd.port.mk>
