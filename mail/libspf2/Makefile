COMMENT=	SPF library

GH_ACCOUNT=	shevek
GH_PROJECT=	libspf2
GH_COMMIT=	4915c308d57ff3abac9fb241f09c4bed2ab54815

DISTNAME=	libspf2-1.2.11pre20210609

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
