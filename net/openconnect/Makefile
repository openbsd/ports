# $OpenBSD: Makefile,v 1.27 2014/07/09 10:28:49 sthen Exp $

COMMENT=	client for Cisco AnyConnect SSL VPN

DISTNAME=	openconnect-6.00

SHARED_LIBS +=  openconnect               3.0 # 3.3

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/openconnect/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp gnutls hogweed m nettle oath p11-kit proxy pthread
WANTLIB += stdc++ tasn1 xml2 z ffi

MASTER_SITES=	ftp://ftp.infradead.org/pub/openconnect/

MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No
# groff is used to format html during build, USE_GROFF not needed
# XXX can probably convert to using mandoc?
BUILD_DEPENDS=		textproc/groff \
			textproc/py-xml
LIB_DEPENDS=		security/gnutls \
			textproc/libxml \
			net/libproxy>=0.4.6p7 \
			security/oath-toolkit>=2.0.2
RUN_DEPENDS=		net/vpnc-scripts

FAKE_FLAGS=		pkgdatadir=${PREFIX}/share/doc/openconnect

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"
CONFIGURE_ARGS=	--with-vpnc-script=${SYSCONFDIR}/vpnc-script \
		--without-stoken
# make sure libstoken isn't picked up automatically if we import it.

.include <bsd.port.mk>
