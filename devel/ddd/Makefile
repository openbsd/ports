# $OpenBSD: Makefile,v 1.4 1998/10/08 18:26:40 marc Exp $
#

DISTNAME=       	ddd-3.0
CATEGORIES=		devel

MAINTAINER=		marc@openbsd.org

MASTER_SITES=   	ftp://uiarchive.cso.uiuc.edu/pub/packages/ddd/ \
			ftp://ftp.ips.cs.tu-bs.de/pub/local/softech/ddd/

# Library dependencies
#
LIB_DEPENDS=		Xm\\.1\\.:${PORTSDIR}/x11/lesstif
USE_GMAKE=		yes
USE_X11=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ENV=		${SETENV} INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
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
