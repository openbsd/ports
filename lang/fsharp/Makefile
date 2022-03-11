COMMENT=	functional-first programming language

GH_ACCOUNT=	fsharp
GH_PROJECT=	fsharp
GH_TAGNAME=	4.0.1.1
REVISION=	0

CATEGORIES=	lang devel

HOMEPAGE=	http://fsharp.org/

# Apache 2
PERMIT_PACKAGE=	Yes

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
