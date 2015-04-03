# $OpenBSD: Makefile,v 1.16 2015/04/03 15:12:28 pascal Exp $

COMMENT=		stand-alone shell with built-in commands

DISTNAME =		sash-3.8
REVISION =		0
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
NO_TEST=		Yes

do-install:
	cd ${WRKSRC} && ${INSTALL_PROGRAM} sash ${PREFIX}/bin
	cd ${WRKSRC} && ${INSTALL_MAN} sash.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
