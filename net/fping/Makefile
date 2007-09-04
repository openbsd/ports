# $OpenBSD: Makefile,v 1.21 2007/09/04 10:32:58 sthen Exp $
# $FreeBSD: ports/net/fping/Makefile,v 1.8 2000/03/22 00:26:51 obrien Exp $

COMMENT=		quickly ping N hosts w/o flooding the network

VERSION=		2.4b2
DISTNAME=		fping-${VERSION}_to-ipv6
PKGNAME=		fping-${VERSION}p3
CATEGORIES=		net
MASTER_SITES=		http://fping.sourceforge.net/download/
HOMEPAGE=		http://www.fping.com/
MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--bindir=${PREFIX}/sbin
COPTS+=			-DHAVE_PROGNAME

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fping ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/fping.8 ${PREFIX}/man/man8
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/fping
	${INSTALL_MAN} ${WRKBUILD}/COPYING ${PREFIX}/share/doc/fping
	${INSTALL_MAN} ${WRKBUILD}/README ${PREFIX}/share/doc/fping

.include <bsd.port.mk>
