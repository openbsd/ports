# $OpenBSD: Makefile,v 1.21 2007/09/16 01:37:09 merdely Exp $

COMMENT=	small & simple FAX send/receive program

DISTNAME=	efax-0.9
PKGNAME=	${DISTNAME}p1
CATEGORIES=	comms

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/serialcomm/fax/}

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

NO_REGRESS=	Yes

do-install:
	cd ${WRKBUILD}; \
		${INSTALL_PROGRAM} efax efix ${PREFIX}/bin; \
		${INSTALL_SCRIPT} fax ${PREFIX}/bin; \
		${INSTALL_MAN} fax.1 efax.1 efix.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
