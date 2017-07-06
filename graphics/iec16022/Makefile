# $OpenBSD: Makefile,v 1.8 2017/07/06 13:20:51 sthen Exp $

COMMENT=	2D barcodes / DataMatrix creation tool

V=		0.3.0
GH_ACCOUNT=	rdoeffinger
GH_PROJECT=	iec16022
GH_TAGNAME=	v$V

SHARED_LIBS +=  iec16022                  3.0 # unknown

CATEGORIES=	graphics

HOMEPAGE=	http://rdoeffinger.github.io/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c popt z

MODULES=	devel/gettext

LIB_DEPENDS=	devel/popt

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

pre-test:
	sed -i 's,/bin/bash,/bin/sh,g' ${WRKSRC}/test/testsuite.sh

.include <bsd.port.mk>
