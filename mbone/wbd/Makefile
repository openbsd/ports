# $OpenBSD: Makefile,v 1.23 2001/06/20 01:43:26 pvalchev Exp $

COMMENT=	"shared drawing (whiteboard) tool using multicast"

DISTNAME=	wbd-1.0ucl4
CATEGORIES=	mbone
NEED_VERSION=	1.402

MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: BSD
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
