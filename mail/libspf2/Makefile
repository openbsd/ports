# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:28 sthen Exp $

COMMENT=	SPF library

DISTNAME=	libspf2-1.2.10
REVISION=	4

SHARED_LIBS +=	spf2                 4.0      # 3.0

CATEGORIES=	mail
HOMEPAGE=	http://www.libspf2.org/

MASTER_SITES=	${HOMEPAGE}/spf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

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
