# $OpenBSD: Makefile,v 1.18 2021/12/01 18:17:23 tb Exp $

CATEGORIES=		devel
COMMENT=		high performance Cloud Storage client library

GH_ACCOUNT =		scality
GH_PROJECT =		Droplet
GH_TAGNAME =		v2.0
DISTNAME=		droplet-${GH_TAGNAME:S/v//}
REVISION=		1

SHARED_LIBS=		droplet		1.0 #0.0

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += crypto iconv json-c lzma m pthread ssl xml2 z

LIB_DEPENDS=		converters/libiconv \
			textproc/libxml \
			devel/json-c

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
AUTORECONF=		./autogen.sh
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
