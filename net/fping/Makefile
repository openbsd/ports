# $OpenBSD: Makefile,v 1.12 2002/12/29 21:14:11 fgsch Exp $
# $FreeBSD: ports/net/fping/Makefile,v 1.8 2000/03/22 00:26:51 obrien Exp $

COMMENT=		"quickly ping N hosts w/o flooding the network"

DISTNAME=		fping-2.2b1
CATEGORIES=		net
MASTER_SITES=		ftp://ftp.stanford.edu/dept/networking/pub/fping/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--bindir=${PREFIX}/sbin
COPTS=			-DHAVE_PROGNAME

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fping ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/fping.8 ${PREFIX}/man/man8
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/fping
	${INSTALL_MAN} ${WRKBUILD}/COPYING ${PREFIX}/share/doc/fping
	${INSTALL_MAN} ${WRKBUILD}/README ${PREFIX}/share/doc/fping

.include <bsd.port.mk>
