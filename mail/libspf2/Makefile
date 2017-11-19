# $OpenBSD: Makefile,v 1.12 2017/11/19 00:53:16 naddy Exp $

COMMENT=	SPF library

DISTNAME=	libspf2-1.2.10
REVISION=	3

SHARED_LIBS +=	spf2                 4.0      # 3.0

CATEGORIES=	mail
HOMEPAGE=	http://www.libspf2.org/

MASTER_SITES=	${HOMEPAGE}/spf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl pthread

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68

CONFIGURE_ARGS=		--bindir=${PREFIX}/libexec/libspf2
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

# broken test cases
NO_TEST=		yes

.include <bsd.port.mk>
