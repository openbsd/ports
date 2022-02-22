# $OpenBSD: Makefile,v 1.112 2022/02/22 23:14:30 sthen Exp $

COMMENT =		highly flexible sniffer/NIDS

DISTNAME =		snort-2.9.19
RULESV =		29190
SUBST_VARS =		RULESV APPID_COMMENT

CATEGORIES =		net security

HOMEPAGE =		https://www.snort.org/

MAINTAINER =		Markus Lude <markus.lude@gmx.de>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto daq dnet lzma m nghttp2 pcap pcre pthread z

FLAVORS =		no_luajit
.if ${MACHINE_ARCH} == arm || \
    ${MACHINE_ARCH} == amd64 || \
    ${MACHINE_ARCH} == i386 || \
    ${MACHINE_ARCH} == powerpc
FLAVOR ?=
.else
FLAVOR =		no_luajit
.endif

MASTER_SITES =		https://www.snort.org/downloads/snort/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-static-daq \
			--enable-non-ether-decoders

LIBTOOL_FLAGS =		--tag=disable-static

LIB_DEPENDS =		archivers/xz \
			devel/pcre \
			net/daq \
			net/libdnet \
			www/nghttp2

.if ${FLAVOR:Mno_luajit}
CONFIGURE_ARGS +=	--disable-open-appid
APPID_COMMENT =		"@comment "
.else
LIB_DEPENDS +=		lang/luajit
WANTLIB +=		c++abi luajit-5.1
APPID_COMMENT =
.endif

CONFIGS	=		classification.config gen-msg.map reference.config \
			snort.conf threshold.conf unicode.map

PREPROC =		decoder.rules preprocessor.rules

DOCS =			AUTHORS CREDITS README README.* *.pdf TODO USAGE \
			WISHLIST

pre-configure:
	@cd ${WRKSRC}; ${SUBST_CMD} etc/snort.conf tools/appid_detector_builder.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snort
.for i in ${CONFIGS}
	${INSTALL_DATA} ${WRKSRC}/etc/${i} ${PREFIX}/share/examples/snort
.endfor
	${INSTALL_DATA} ${WRKSRC}/doc/generators ${PREFIX}/share/examples/snort

.for i in ${PREPROC}
	${INSTALL_DATA} ${WRKSRC}/preproc_rules/${i} ${PREFIX}/share/examples/snort
.endfor

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snort
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${i} ${PREFIX}/share/doc/snort
.endfor

NO_TEST =		Yes

.include <bsd.port.mk>
