# $OpenBSD: Makefile,v 1.13 2000/02/12 06:29:59 turan Exp $

BROKEN=		new distsites needed.  sources do not fetch consistantly.

DISTNAME=	wbd-1.0ucl4
CATEGORIES=	mbone
MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

BUILD_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

MAKEFILE=	makefile
WRKDIST=	${WRKDIR}/wbd

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."  
	@echo ""

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wbd ${PREFIX}/bin

.include <bsd.port.mk>
