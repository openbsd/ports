# $OpenBSD: Makefile,v 1.2 2018/11/05 17:23:41 sthen Exp $

COMMENT=	communicate with embedded devices using CoAP (RFC 7252)

# tarball built from the following plus submodules:
#GH_ACCOUNT=	obgm
#GH_PROJECT=	libcoap
#GH_COMMIT=	26d5cf784a2174c4cde90cf71d88848d606d54e8

V=		20180531
DISTNAME=	libcoap-$V
PKGNAME=	libcoap-0.$V
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=  coap-2-tinydtls             0.0 # 1.0

CATEGORIES=	devel

HOMEPAGE=	https://libcoap.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	https://spacehopper.org/mirrors/

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/cunit \
		devel/libtool \
		textproc/asciidoc

USE_GMAKE=	Yes

# XXX doesn't find own-built libraries with openbsd libtool (devel/libtool
# also needed for autoconf so listed separately above as well)
USE_LIBTOOL=	gnu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-doxygen \
			--disable-shared \
			--enable-tests \
			--with-tinydtls

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

do-gen:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	cd ${PREFIX}/man/man5; for i in *; do mv $$i ../man1/$${i%.5}.1; done

.include <bsd.port.mk>
