# $OpenBSD: Makefile,v 1.5 2006/10/23 11:21:28 espie Exp $

COMMENT=		"extract files from InstallShield CAB archives"

DISTNAME=		unshield-0.5
PKGNAME=		${DISTNAME}p1
CATEGORIES=		archivers
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synce/}
SHARED_LIBS=		unshield	1.0

HOMEPAGE=		http://synce.sourceforge.net/synce/unshield.php

MAINTAINER=		Jonathan Gray <jsg@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
