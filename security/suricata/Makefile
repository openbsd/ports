# $OpenBSD: Makefile,v 1.17 2019/04/05 12:24:00 bluhm Exp $

COMMENT =	high performance network IDS, IPS and security monitoring

SURICATA_V =	4.1.3
SUPDATE_V =	1.0.4
REVISION =	3

DISTNAME =	suricata-${SURICATA_V}
CATEGORIES =	security
SHARED_LIBS +=  htp                       0.0 # 2.0

HOMEPAGE =	https://suricata-ids.org/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org> \
		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	https://www.openinfosecfoundation.org/download/

WANTLIB += c iconv jansson lz4 lzma magic net nspr4 nss3 nssutil3 pcap
WANTLIB += pcre plc4 plds4 pthread smime3 ssl3 yaml-0 z

MODULES =	lang/python

BUILD_DEPENDS = textproc/py-sphinx \
		textproc/py-yaml

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

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

CONFIGURE_ENV = ac_cv_path_HAVE_PDFLATEX= \
		ac_cv_path_HAVE_GIT_CMD=

CONFIGURE_ARGS =	--disable-gccmarch-native \
			--enable-ipfw \
			--disable-rust

SUBST_VARS =	VARBASE SURICATA_V SUPDATE_V

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/suricata/rules
	${INSTALL_DATA} ${WRKSRC}/*.config ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/suricata.yaml ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/rules/*.rules ${PREFIX}/share/examples/suricata/rules
	rm ${PREFIX}/share/doc/suricata/{*.txt,GITGUIDE,INSTALL*}
	${INSTALL_DATA} ${WRKSRC}/doc/{AUTHORS,NEWS,README,TODO} \
		${PREFIX}/share/doc/suricata

.include <bsd.port.mk>
