# $OpenBSD: Makefile,v 1.93 2019/07/12 20:49:37 sthen Exp $

COMMENT=	SSL encryption wrapper for standard network daemons

DISTNAME=	stunnel-5.44
CATEGORIES=	security
REVISION=	2

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto pthread ssl util

HOMEPAGE=	http://www.stunnel.org/

MASTER_SITES=	https://www.stunnel.org/downloads/archive/5.x/ \
		http://ftp.nluug.nl/pub/networking/stunnel/archive/5.x/ \
		http://mirror.bit.nl/stunnel/archive/5.x/ \
		ftp://ftp.stunnel.org/stunnel/archive/5.x/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-ssl=/usr \
			--disable-libwrap
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/auto

USE_GMAKE=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/stunnel3.in
	${SUBST_CMD} ${WRKSRC}/tools/stunnel.conf-sample.in

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/stunnel ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKBUILD}/src/stunnel3 ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/doc/stunnel.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stunnel
	${INSTALL_DATA} ${WRKSRC}/tools/stunnel.conf-sample.in \
		${PREFIX}/share/examples/stunnel/stunnel.conf-sample

.include <bsd.port.mk>
