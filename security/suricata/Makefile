# $OpenBSD: Makefile,v 1.11 2019/03/05 12:38:23 bluhm Exp $

COMMENT =	high performance network IDS, IPS and security monitoring

DISTNAME =	suricata-4.1.2
REVISION =	1
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

CONFIGURE_ARGS = --disable-gccmarch-native \
		 --enable-ipfw

SUBST_VARS =	VARBASE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/suricata/rules
	${INSTALL_DATA} ${WRKSRC}/*.config ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/suricata.yaml ${PREFIX}/share/examples/suricata
	${INSTALL_DATA} ${WRKSRC}/rules/*.rules ${PREFIX}/share/examples/suricata/rules
	rm ${PREFIX}/share/doc/suricata/{*.txt,GITGUIDE,INSTALL*}
	${INSTALL_DATA} ${WRKSRC}/doc/{AUTHORS,NEWS,README,TODO} \
		${PREFIX}/share/doc/suricata

.include <bsd.port.mk>
