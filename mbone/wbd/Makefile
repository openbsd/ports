# $OpenBSD: Makefile,v 1.10 1999/10/30 21:58:26 brad Exp $

DISTNAME=	wbd-1.0ucl4
CATEGORIES=	mbone
MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

MAKEFILE=	makefile
WRKSRC=	${WRKDIR}/wbd

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
