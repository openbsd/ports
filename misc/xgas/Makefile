# OpenBSD makefile for: xgas
# Date created:         May 20 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.11 2001/10/28 13:05:48 espie Exp $
#

COMMENT=	"animated simulation of an ideal gas"

DISTNAME=	xgas
PKGNAME=        xgas-1.0
CATEGORIES=     misc
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	X11/demos

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=imake

post-install:
	@chmod 755 ${PREFIX}/bin/xgas
	@chown bin.bin ${PREFIX}/bin/xgas

.include <bsd.port.mk>
