COMMENT=	SPF library

#GH_ACCOUNT=	shevek
GH_ACCOUNT=	nomis
GH_PROJECT=	libspf2
GH_COMMIT=	0198cc55113c2866e2bf8cffa899404593677e53

DISTNAME=	libspf2-1.2.11pre20231001

SHARED_LIBS +=	spf2                 4.0      # 3.0

CATEGORIES=	mail
HOMEPAGE=	https://www.libspf2.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl pthread

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ARGS=		--bindir=${PREFIX}/libexec/libspf2
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"
SEPARATE_BUILD=		Yes

post-install:
	rm ${PREFIX}/libexec/libspf2/*_static

.include <bsd.port.mk>
