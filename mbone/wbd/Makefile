# $OpenBSD: Makefile,v 1.20 2000/06/06 22:41:16 espie Exp $

DISTNAME=	wbd-1.0ucl4
CATEGORIES=	mbone
NEED_VERSION=	 1.230

MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	gs::print/ghostscript/gnu
RUN_DEPENDS=	gs::print/ghostscript/gnu

MAKE_FILE=	makefile
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
