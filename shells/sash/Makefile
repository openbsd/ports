# $OpenBSD: Makefile,v 1.3 2001/07/25 16:31:14 lebel Exp $

COMMENT=		"stand-alone shell with built-in commands"

VER=			3.4
DISTNAME=		sash-${VER}
CATEGORIES=		shells
NEED_VERSION=		1.402
HOMEPAGE=		http://www.canb.auug.org.au/~dbell/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=		Wilbern Cobb <cobb@vedge.com.ar>

MASTER_SITES=		http://www.canb.auug.org.au/~dbell/programs/

DOCS=			README

do-install:
	    cd ${WRKSRC} && ${INSTALL_PROGRAM} sash ${PREFIX}/bin
	    cd ${WRKSRC} && ${INSTALL_MAN} sash.1 ${PREFIX}/man/man1
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sash
	    cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/sash

.include <bsd.port.mk>
