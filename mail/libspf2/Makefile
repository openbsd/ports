# $OpenBSD: Makefile,v 1.1.1.1 2008/01/30 15:58:49 okan Exp $

COMMENT=	SPF library

DISTNAME=	libspf2-1.2.5
CATEGORIES=	mail
HOMEPAGE=	http://www.libspf2.org/

MASTER_SITES=	http://www.libspf2.org/spf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

WANTLIB=		c pthread
SHARED_LIBS+=		spf2 2.0

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--bindir=${PREFIX}/libexec/libspf2

# broken test cases
NO_REGRESS=		yes

.include <bsd.port.mk>
