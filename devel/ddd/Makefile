# $OpenBSD: Makefile,v 1.13 1999/12/03 08:03:28 kevlo Exp $

DISTNAME=	ddd-3.1.90
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.ips.cs.tu-bs.de/pub/local/softech/ddd/src/  \
		ftp://uiarchive.cso.uiuc.edu/pub/packages/ddd/src/  \
		ftp://ftp.gre.ac.uk/pub/tools/debuggers/ddd/src/  \
		ftp://richb-pc.acc.qc.edu/pub/ddd/src/  \
		ftp://ftp.th-darmstadt.de/pub/programming/tools/ddd/src/

MAINTAINER=	marc@openbsd.org

USE_MOTIF=	yes
USE_EGCC=	yes
USE_EGXX=	yes
USE_GMAKE=	yes
USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}"

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

check:	build
	@cd ${WRKSRC}; ${GMAKE} check

.include <bsd.port.mk>
