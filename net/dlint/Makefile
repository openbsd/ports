# $OpenBSD: Makefile,v 1.5 2002/10/28 01:38:45 naddy Exp $

COMMENT=		"DNS zone verification tool"

DISTNAME=		dlint1.4.0
PKGNAME=		dlint-1.4.0
CATEGORIES=    		net

HOMEPAGE=		http://www.domtools.com/dns/dlint.shtml

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.domtools.com/pub/

NO_BUILD=		Yes
NO_REGRESS=		Yes

FAKE_FLAGS=		DESTROOT=${WRKINST}

.include <bsd.port.mk>
