# $OpenBSD: Makefile,v 1.14 2005/07/29 19:40:44 aanriot Exp $

COMMENT=		"passive OS fingerprinting tool"

DISTNAME=		p0f
EXTRACT_SUFX=		.tgz
PKGNAME=		p0f-2.0.5
CATEGORIES=     	security net

HOMEPAGE=		http://lcamtuf.coredump.cx/p0f.shtml

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

MASTER_SITES=	http://lcamtuf.coredump.cx/

MAKE_FILE=	${WRKSRC}/mk/OpenBSD
MAKE_FLAGS=	CC=${CC}

NO_REGRESS=	Yes

.include <bsd.port.mk>
