# $OpenBSD: Makefile,v 1.4 2002/05/20 19:30:39 jsyn Exp $

COMMENT=		"DNS zone verification tool"

DISTNAME=		dlint1.4.0
PKGNAME=		dlint-1.4.0
CATEGORIES=    		net
NEED_VERSION=		1.515

HOMEPAGE=		http://www.domtools.com/dns/dlint.shtml

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.domtools.com/pub/

NO_BUILD=		Yes

FAKE_FLAGS=		DESTROOT=${WRKINST}

.include <bsd.port.mk>
