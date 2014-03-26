# $OpenBSD: Makefile,v 1.24 2014/03/26 14:19:07 sthen Exp $

COMMENT=	client for Cisco AnyConnect SSL VPN

DISTNAME=	openconnect-5.99
DIST_SUBDIR=	openconnect
VPNC_SCRIPT=	vpnc-script
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${VPNC_SCRIPT}:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

SHARED_LIBS +=  openconnect               2.0 # 3.2

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/openconnect/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp gnutls hogweed m nettle oath p11-kit proxy pthread
WANTLIB += stdc++ tasn1 xml2 z ffi

MASTER_SITES=	ftp://ftp.infradead.org/pub/openconnect/
MASTER_SITES0=	http://git.infradead.org/users/dwmw2/vpnc-scripts.git/blob_plain/0e042c5ab78bd5dbeeb82b8570160c081fa8c3ff:/

# used to format html during build, USE_GROFF not needed
# XXX can probably convert to using mandoc?
BUILD_DEPENDS=		textproc/groff \
			textproc/py-xml
MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No

LIB_DEPENDS=		security/gnutls \
			textproc/libxml \
			net/libproxy>=0.4.6p7 \
			security/oath-toolkit>=2.0.2
FAKE_FLAGS=		pkgdatadir=${PREFIX}/share/doc/openconnect

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"
CONFIGURE_ARGS=	--with-vpnc-script=${SYSCONFDIR}/openconnect/vpnc-script \
		--without-stoken
# make sure libstoken isn't picked up automatically if we import it.

post-extract:
	cp ${FULLDISTDIR}/${VPNC_SCRIPT} ${WRKSRC}/vpnc-script

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openconnect/
	${INSTALL_SCRIPT} ${WRKSRC}/vpnc-script \
	    ${PREFIX}/share/examples/openconnect/

.include <bsd.port.mk>
