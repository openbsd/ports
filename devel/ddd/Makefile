# $OpenBSD: Makefile,v 1.6 1999/03/14 17:52:47 espie Exp $
#

DISTNAME=	ddd-3.1.1
CATEGORIES=	devel

BROKEN="Newer version available"
MAINTAINER=	marc@openbsd.org

MASTER_SITES=	ftp://ftp.archive.de.uu.net/pub/programming/debuggers/ddd/ \
		ftp://ftp.ips.cs.tu-bs.de/pub/local/softech/ddd/

# Library dependencies
#
USE_MOTIF=	yes
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
.if defined(USE_GMAKE)
	@cd ${WRKSRC} && ${GMAKE} check
.else
	@cd ${WRKSRC} && ${MAKE} check
.endif

.include <bsd.port.mk>
