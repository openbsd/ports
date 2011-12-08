# $OpenBSD: Makefile,v 1.1.1.1 2011/12/08 13:55:28 sthen Exp $

COMMENT=	client for Cisco AnyConnect SSL VPN

DISTNAME=	openconnect-3.15
DIST_SUBDIR=	openconnect
VPNC_SCRIPT=	vpnc-script
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${VPNC_SCRIPT}:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

SHARED_LIBS +=  openconnect               0.0 # 1.2

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/openconnect/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto m modman proxy pthread ssl stdc++ xml2 z

MASTER_SITES=	ftp://ftp.infradead.org/pub/openconnect/
MASTER_SITES0=	http://git.infradead.org/users/dwmw2/vpnc-scripts.git/blob_plain/d19a327c74f824114c5c72101104891fe881a7da:/

# used to format html during build, USE_GROFF not needed
BUILD_DEPENDS=		textproc/groff
MODULES=		converters/libiconv \
			lang/python
MODPY_RUNDEP=		No

LIB_DEPENDS=		textproc/libxml \
			net/libproxy>=0.4.6p7
FAKE_FLAGS=		pkgdatadir=${PREFIX}/share/doc/openconnect

SEPARATE_BUILD=		simple
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

post-extract:
	cp ${FULLDISTDIR}/${VPNC_SCRIPT} ${WRKSRC}/vpnc-script

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openconnect/
	${INSTALL_SCRIPT} ${WRKSRC}/vpnc-script \
	    ${PREFIX}/share/examples/openconnect/

.include <bsd.port.mk>
