# $OpenBSD: Makefile,v 1.37 2016/12/02 17:38:33 sthen Exp $

COMMENT=	client for Cisco AnyConnect SSL VPN

DISTNAME=	openconnect-7.07
REVISION=	0

SHARED_LIBS +=  openconnect               4.2 # 5.1

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/openconnect/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gmp gnutls hogweed iconv idn intl lz4 lzma m
WANTLIB += nettle p11-kit pthread tasn1 xml2 z

MASTER_SITES=	ftp://ftp.infradead.org/pub/openconnect/

FLAVORS=	light
FLAVOR?=

MODULES=	lang/python
MODPY_RUNDEP=	No
# groff is used to format html during build, USE_GROFF not needed
# XXX can probably convert to using mandoc?
BUILD_DEPENDS=	devel/gettext-tools \
		textproc/groff \
		textproc/py-xml
RUN_DEPENDS=	net/vpnc-scripts
LIB_DEPENDS=	archivers/lz4 \
		devel/gettext \
		security/gnutls \
		textproc/libxml

FAKE_FLAGS=	pkgdatadir=${PREFIX}/share/doc/openconnect

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"
CONFIGURE_ARGS=	--with-vpnc-script=${SYSCONFDIR}/vpnc-script \
		--without-stoken
# make sure libstoken isn't picked up automatically if we import it.

.if ${FLAVOR:Mlight}
CONFIGURE_ARGS+= --without-libpcsclite \
		--without-libproxy \
		--without-libpskc
.else
WANTLIB+=	ltdl pcsclite proxy pskc stdc++ xmlsec1 xslt
LIB_DEPENDS+=	net/libproxy>=0.4.6p7 \
		security/oath-toolkit,-pskc \
		security/pcsc-lite
.endif

.include <bsd.port.mk>
