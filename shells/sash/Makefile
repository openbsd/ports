# $OpenBSD: Makefile,v 1.13 2013/03/11 11:41:29 espie Exp $

COMMENT=		stand-alone shell with built-in commands

DISTNAME=		sash-3.7
CATEGORIES=		shells
HOMEPAGE=		http://www.canb.auug.org.au/~dbell/

PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

MASTER_SITES=		http://www.canb.auug.org.au/~dbell/programs/

ALL_TARGET=		sash

CFLAGS+=		-DHAVE_GZIP=1 \
			-DHAVE_LINUX_ATTR=0 \
			-DHAVE_LINUX_MOUNT=0 \
			-DHAVE_BSD_MOUNT=1 \
			-DMOUNT_TYPE='\"ffs\"'

MAKE_FLAGS=		CFLAGS="${CFLAGS}"
USE_GROFF =		Yes
NO_TEST=		Yes

do-install:
	cd ${WRKSRC} && ${INSTALL_PROGRAM} sash ${PREFIX}/bin
	cd ${WRKSRC} && ${INSTALL_MAN} sash.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
