# $OpenBSD: Makefile,v 1.3 2006/01/10 10:58:15 espie Exp $

COMMENT=		"extract files from InstallShield CAB archives"

DISTNAME=		unshield-0.5
PKGNAME=		${DISTNAME}p0
CATEGORIES=		archivers
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synce/}
SHARED_LIBS=		unshield	0.0

HOMEPAGE=		http://synce.sourceforge.net/synce/unshield.php

MAINTAINER=		Jonathan Gray <jsg@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
