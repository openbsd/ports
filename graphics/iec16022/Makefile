# $OpenBSD: Makefile,v 1.14 2020/07/11 22:54:35 sthen Exp $

COMMENT=	2D barcodes / DataMatrix creation tool

V=		0.3.0
DISTNAME=	iec16022-$V
EXTRACT_SUFX=	.tar.xz
REVISION=	2

SHARED_LIBS +=  iec16022                  3.0 # unknown

CATEGORIES=	graphics

HOMEPAGE=	http://rdoeffinger.github.io/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  c iconv intl popt z

MASTER_SITES=	https://github.com/rdoeffinger/iec16022/releases/download/v$V/

LIB_DEPENDS=	devel/popt

CONFIGURE_STYLE=autoreconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
AUTORECONF=	./autogen.sh

pre-test:
	sed -i 's,/bin/bash,/bin/sh,g' ${WRKSRC}/test/testsuite.sh

.include <bsd.port.mk>
