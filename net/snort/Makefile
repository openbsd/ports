# $OpenBSD: Makefile,v 1.87 2014/08/19 04:22:53 lteo Exp $

SHARED_ONLY =		Yes

COMMENT =		highly flexible sniffer/NIDS

VERSION =		2.9.6.2
DISTNAME =		snort-${VERSION}

CATEGORIES =		net security

HOMEPAGE =		http://www.snort.org/

MAINTAINER =		Markus Lude <markus.lude@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto daq dnet m pcap pcre pthread z

MASTER_SITES =		https://www.snort.org/downloads/snort/

USE_GROFF =		Yes

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-static-daq \
			--enable-non-ether-decoders

LIB_DEPENDS =		devel/pcre \
			net/libdnet \
			net/daq

CONFIGS	=		classification.config gen-msg.map reference.config \
			snort.conf threshold.conf unicode.map

PREPROC =		decoder.rules preprocessor.rules

DOCS =			AUTHORS CREDITS README README.* *.pdf TODO USAGE \
			WISHLIST

V =			${VERSION:S/.//g}
SUBST_VARS +=		V

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/etc/snort.conf

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
