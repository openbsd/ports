# $OpenBSD: Makefile,v 1.1.1.1 2005/07/25 09:58:16 jsg Exp $

COMMENT=		"extract files from InstallShield CAB archives"

DISTNAME=		unshield-0.5
CATEGORIES=		archivers
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synce/}

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

.include <bsd.port.mk>
