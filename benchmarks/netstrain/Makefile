# $OpenBSD: Makefile,v 1.1.1.1 2003/07/25 00:46:29 jolan Exp $

COMMENT=	"tool to measure TCP throughput"
DISTNAME=	netstrain-3.0
CATEGORIES=	benchmarks net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netstrain/}

HOMEPAGE=	http://netstrain.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# ISC-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netstrain
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/netstrain
	${INSTALL_PROGRAM} ${WRKBUILD}/netstraind ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/netstrain ${PREFIX}/bin

.include <bsd.port.mk>
