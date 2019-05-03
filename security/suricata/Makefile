# $OpenBSD: Makefile,v 1.20 2019/05/03 06:22:34 gonzalo Exp $

COMMENT =	high performance network IDS, IPS and security monitoring

SURICATA_V =	4.1.4
SUPDATE_V =	1.0.5

DISTNAME =	suricata-${SURICATA_V}
CATEGORIES =	security
SHARED_LIBS +=	htp                       0.0 # 2.0

HOMEPAGE =	https://suricata-ids.org/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org> \
		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	https://www.openinfosecfoundation.org/download/

# uses pledge()
WANTLIB +=	${COMPILER_LIBCXX} c iconv jansson lz4 lzma m magic
WANTLIB +=	net nspr4 nss3 nssutil3 pcap pcre plc4 plds4 smime3
WANTLIB +=	ssl3 yaml-0 z

MODULES =	lang/python

BUILD_DEPENDS =	textproc/py-sphinx \
		textproc/py-yaml \
		lang/rust

RUN_DEPENDS =	textproc/py-yaml

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

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

CONFIGURE_ENV =		ac_cv_path_HAVE_PDFLATEX= \
			ac_cv_path_HAVE_GIT_CMD=

CONFIGURE_ARGS =	--disable-gccmarch-native \
			--enable-ipfw

SUBST_VARS =		VARBASE SURICATA_V SUPDATE_V

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/suricata/rules
	${INSTALL_DATA} ${WRKSRC}/*.config ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/suricata.yaml ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/rules/*.rules ${PREFIX}/share/examples/suricata/rules
	rm ${PREFIX}/share/doc/suricata/{*.txt,GITGUIDE,INSTALL*}
	${INSTALL_DATA} ${WRKSRC}/doc/{AUTHORS,NEWS,README,TODO} \
		${PREFIX}/share/doc/suricata

.include <bsd.port.mk>
