# OpenBSD makefile for: xgas
# Date created:         May 20 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.13 2002/05/13 23:31:26 espie Exp $
#

COMMENT=	"animated simulation of an ideal gas"

DISTNAME=	xgas
PKGNAME=        xgas-1.0
CATEGORIES=     misc
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/demos/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=imake

post-install:
	@chmod 755 ${PREFIX}/bin/xgas
	@chown bin.bin ${PREFIX}/bin/xgas

.include <bsd.port.mk>
