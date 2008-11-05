# $OpenBSD: Makefile,v 1.2 2008/11/05 17:20:07 jasper Exp $

COMMENT=	SPF library

DISTNAME=	libspf2-1.2.9
SHARED_LIBS+=		spf2 3.0
CATEGORIES=	mail
HOMEPAGE=	http://www.libspf2.org/

MASTER_SITES=	${HOMEPAGE}/spf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

WANTLIB=		c pthread

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--bindir=${PREFIX}/libexec/libspf2

# broken test cases
NO_REGRESS=		yes

.include <bsd.port.mk>
