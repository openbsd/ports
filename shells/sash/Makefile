# $OpenBSD: Makefile,v 1.5 2002/05/08 19:28:39 wcobb Exp $

COMMENT=		"stand-alone shell with built-in commands"

VERSION=		3.5
DISTNAME=		sash-${VERSION}
CATEGORIES=		shells
NEED_VERSION=		1.509
HOMEPAGE=		http://www.canb.auug.org.au/~dbell/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

MASTER_SITES=		http://www.canb.auug.org.au/~dbell/programs/ \
			http://mirror.csoft.org/sash/

ALL_TARGET=		sash

do-install:
	    cd ${WRKSRC} && ${INSTALL_PROGRAM} sash ${PREFIX}/bin
	    cd ${WRKSRC} && ${INSTALL_MAN} sash.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
