# OpenBSD makefile for: vic
# Version required:     2.6
# Date created:         July 14 1999
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1999/07/15 14:59:20 angelos Exp $
#

DISTNAME=       wbd
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/
DISTFILES=      wbd-1.0ucl4.tar.gz
ONLY_FOR_ARCHS=	i386

MAINTAINER=	angelos@openbsd.org

# XXX ghostscript, ghostscript3, ghostscript4 or ghostscript5 will all do.
RUN_DEPENDS=    gs:${PORTSDIR}/print/ghostscript5

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wbd ${PREFIX}/bin

post-patch:
	/bin/mv ${WRKSRC}/makefile ${WRKSRC}/Makefile

.include <bsd.port.mk>
