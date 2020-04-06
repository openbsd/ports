# $OpenBSD: Makefile,v 1.55 2020/04/06 18:30:58 bket Exp $

COMMENT=	client for Cisco AnyConnect SSL VPN

DISTNAME=	openconnect-8.08

SHARED_LIBS +=  openconnect               4.5 # 5.6

CATEGORIES=	net

HOMEPAGE=	https://www.infradead.org/openconnect/

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# LGPLv2.1 only
PERMIT_PACKAGE=	Yes

WANTLIB += c ffi gmp gnutls hogweed iconv idn2 intl lz4 lzma m
WANTLIB += nettle p11-kit pthread tasn1 unistring xml2 z

COMPILER =	base-clang ports-gcc base-gcc

MASTER_SITES=	ftp://ftp.infradead.org/pub/openconnect/

FLAVORS=	light
FLAVOR?=

MODULES=	lang/python
MODPY_RUNDEP=	No

# groff is used to format html during build, USE_GROFF not needed
# XXX can probably convert to using mandoc?
BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/groff \
		textproc/py-xml
RUN_DEPENDS=	net/vpnc-scripts
LIB_DEPENDS=	archivers/lz4 \
		devel/gettext,-runtime \
		security/gnutls>=3.6.13 \
		textproc/libxml
# also wants socket_wrapper and uid_wrapper from cwrap to be present at
# configure time (in openbsd-wip); tests currently failing, in need of
# further work
TEST_DEPENDS=	net/ocserv

FAKE_FLAGS=	pkgdatadir=${PREFIX}/share/doc/openconnect

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"
CONFIGURE_ARGS=		--with-vpnc-script=${SYSCONFDIR}/vpnc-script \
			--without-stoken
# make sure libstoken isn't picked up automatically if we import it.

.if ${FLAVOR:Mlight}
CONFIGURE_ARGS+= --without-libpcsclite \
		--without-libproxy \
		--without-libpskc
.else
WANTLIB+=	ltdl pcsclite proxy pskc ${COMPILER_LIBCXX} xmlsec1 xslt
LIB_DEPENDS+=	net/libproxy>=0.4.6p7 \
		security/oath-toolkit,-pskc \
		security/pcsc-lite
.endif

post-install:
	rm -r ${PREFIX}/libexec/openconnect

pre-test:
	perl -pi -e s,/usr/sbin/ocserv,${LOCALBASE}/sbin/ocserv,g \
	    ${WRKSRC}/tests/common.sh

.include <bsd.port.mk>
