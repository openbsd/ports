# $OpenBSD: Makefile,v 1.3 2013/03/11 11:23:51 espie Exp $

COMMENT=	SPF library

DISTNAME=	libspf2-1.2.9
SHARED_LIBS+=		spf2 3.0
CATEGORIES=	mail
HOMEPAGE=	http://www.libspf2.org/

MASTER_SITES=	${HOMEPAGE}/spf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=		Yes

WANTLIB=		c pthread

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--bindir=${PREFIX}/libexec/libspf2

# broken test cases
NO_TEST=		yes

.include <bsd.port.mk>
