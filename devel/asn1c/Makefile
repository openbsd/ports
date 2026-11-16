COMMENT=	ASN.1 to C compiler

V=		0.9.29
GH_ACCOUNT=	vlm
GH_PROJECT=	asn1c
GH_TAGNAME=	v$V

DISTNAME=	asn1c-$V

CATEGORIES=	devel textproc

HOMEPAGE=	https://lionet.info/asn1c/compiler.html

BUILD_DEPENDS=	devel/bison

# BSD 2-clause
PERMIT_PACKAGE=	Yes

AUTOMAKE_VERSION=1.15
AUTOCONF_VERSION=2.67

CONFIGURE_STYLE= autoreconf

TEST_DEPENDS=	shells/bash

.include <bsd.port.mk>
