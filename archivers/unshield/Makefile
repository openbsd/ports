# $OpenBSD: Makefile,v 1.12 2013/03/10 22:28:05 espie Exp $

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

USE_LIBTOOL=		Yes
AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
