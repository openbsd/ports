# $OpenBSD: Makefile,v 1.6 2015/12/29 19:49:40 jasper Exp $

BROKEN=		unreliable build, frequently hangs in dpb

COMMENT=	functional-first programming language

GH_ACCOUNT=	fsharp
GH_PROJECT=	fsharp
GH_TAGNAME=	3.1.1.32


CATEGORIES=	lang devel

HOMEPAGE=	http://fsharp.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# Apache 2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/mono

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

USE_GMAKE=		Yes

post-patch:
	@cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh --prefix=${LOCALBASE}

.include <bsd.port.mk>
