# $OpenBSD: Makefile,v 1.9 2009/10/14 10:27:28 benoit Exp $

COMMENT=		extract files from InstallShield CAB archives

DISTNAME=		unshield-0.6
SHARED_LIBS+=		unshield	2.0	# .0.0
CATEGORIES=		archivers

HOMEPAGE=		http://sourceforge.net/projects/synce/

MAINTAINER=		Jonathan Gray <jsg@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes
WANTLIB=		c z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synce/}

USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
