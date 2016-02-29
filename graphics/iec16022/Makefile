# $OpenBSD: Makefile,v 1.5 2016/02/29 23:43:49 sthen Exp $

COMMENT=	2D barcodes / DataMatrix creation tool

V=		0.2.5
GH_ACCOUNT=	rdoeffinger
GH_PROJECT=	iec16022
GH_TAGNAME=	v$V
DISTNAME=	iec16022-$V

SHARED_LIBS +=  iec16022                  1.0 # unknown

CATEGORIES=	graphics

HOMEPAGE=	http://rdoeffinger.github.io/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c popt z

MODULES=	devel/gettext

LIB_DEPENDS=	devel/popt

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
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
