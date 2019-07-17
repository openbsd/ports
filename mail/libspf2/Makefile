# $OpenBSD: Makefile,v 1.15 2019/07/17 14:46:33 danj Exp $

COMMENT=	SPF library

DISTNAME=	libspf2-1.2.10
REVISION=	5

SHARED_LIBS +=	spf2                 4.0      # 3.0

CATEGORIES=	mail
HOMEPAGE=	http://www.libspf2.org/

MASTER_SITES=	${HOMEPAGE}/spf/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl pthread

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68

CONFIGURE_ARGS=		--bindir=${PREFIX}/libexec/libspf2
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

# broken test cases
NO_TEST=		yes

.include <bsd.port.mk>
