# $OpenBSD: Makefile,v 1.13 2013/03/21 08:45:11 ajacoutot Exp $

COMMENT=		extract files from InstallShield CAB archives

DISTNAME=		unshield-0.6
SHARED_LIBS+=		unshield	2.0	# .0.0
CATEGORIES=		archivers

HOMEPAGE=		http://sourceforge.net/projects/synce/

MAINTAINER=		Jonathan Gray <jsg@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=		Yes
WANTLIB=		c z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synce/}

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
