# $OpenBSD: Makefile,v 1.8 2007/06/06 11:39:53 steven Exp $

COMMENT=		"stand-alone shell with built-in commands"

VERSION=		3.6
DISTNAME=		sash-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		shells
HOMEPAGE=		http://www.canb.auug.org.au/~dbell/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

MASTER_SITES=		http://www.canb.auug.org.au/~dbell/programs/ \
			http://mirror.csoft.org/sash/

ALL_TARGET=		sash

CFLAGS+=		-DHAVE_GZIP=1 \
			-DHAVE_LINUX_ATTR=0 \
			-DHAVE_LINUX_MOUNT=0 \
			-DHAVE_BSD_MOUNT=1 \
			-DMOUNT_TYPE='\"ffs\"'

MAKE_FLAGS=		CFLAGS="${CFLAGS}"
NO_REGRESS=		Yes

do-install:
	    cd ${WRKSRC} && ${INSTALL_PROGRAM} sash ${PREFIX}/bin
	    cd ${WRKSRC} && ${INSTALL_MAN} sash.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
