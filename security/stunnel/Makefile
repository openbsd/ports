# $OpenBSD: Makefile,v 1.76 2015/06/15 07:02:52 bentley Exp $

COMMENT=	SSL encryption wrapper for standard network daemons

DISTNAME=	stunnel-5.06
CATEGORIES=	security

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto pthread ssl util z

HOMEPAGE=	http://www.stunnel.org/

MASTER_SITES=	https://www.stunnel.org/downloads/archive/5.x/ \
		http://ftp.nluug.nl/pub/networking/stunnel/archive/5.x/ \
		http://mirror.bit.nl/stunnel/archive/5.x/ \
		ftp://ftp.stunnel.org/stunnel/archive/5.x/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-ssl=/usr \
			--with-threads=fork \
			--disable-libwrap
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/auto
NO_TEST=		Yes
USE_GMAKE=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/stunnel.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stunnel
	${INSTALL_DATA} ${WRKBUILD}/tools/stunnel.conf-sample \
		${PREFIX}/share/examples/stunnel

.include <bsd.port.mk>
