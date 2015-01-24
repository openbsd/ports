# $OpenBSD: Makefile,v 1.28 2015/01/24 13:46:44 schwarze Exp $

COMMENT=	small & simple FAX send/receive program

DISTNAME=	efax-0.9
REVISION=	2
CATEGORIES=	comms

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/serialcomm/fax/}

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST=	Yes

do-install:
	cd ${WRKBUILD}; \
		${INSTALL_PROGRAM} efax efix ${PREFIX}/bin; \
		${INSTALL_SCRIPT} fax ${PREFIX}/bin; \
		${INSTALL_MAN} fax.1 efax.1 efix.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
