# OpenBSD makefile for:	DDD - Data Display Debugger
# Version required:     2.2.3
# Date created:		December 29, 1997
# Whom:			Peter Reich
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/22 23:55:12 marc Exp $
#

DISTNAME=       	ddd-2.2.3
DIST_SUBDIR=		ddd
CATEGORIES=		devel

MAINTAINER=		marc@openbsd.org

MASTER_SITES=   	ftp://ftp.ips.cs.tu-bs.de/pub/local/softech/ddd/
PATCH_SITES=		ftp://ftp.ips.cs.tu-bs.de/pub/local/softech/ddd/patches/ddd-2.2.3/
PATCHFILES=		gdb-options

# Library dependencies
# Xpm is part of 2.3 and later
#
LIB_DEPENDS=		Xm\\.1\\.:${PORTSDIR}/x11/lesstif
OS_RELEASE!=		uname -r
OS_NO_XPM=		2.2
.if ( ${OS_RELEASE} <= ${OS_NO_XPM} )
LIB_DEPENDS+=		Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_X11=		yes
GNU_CONFIGURE=		yes

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

check:	build
	@cd ${WRKSRC} && ${MAKE} check

.include <bsd.port.mk>

# The distribution patch file does not name the file to patch nor is it
# relative to ${WRKSRC}.  This hack will work since there is only one patch
# file, but will break if a subsequent distribution patch file is needed.
#
PATCH_DIST_ARGS+=	ddd/ddd.C

