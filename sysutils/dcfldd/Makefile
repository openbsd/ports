# $OpenBSD: Makefile,v 1.2 2010/10/19 07:43:00 espie Exp $

COMMENT=		GNU dd with added forensic/security features

DISTNAME=		dcfldd-1.3.4-1
PKGNAME=		dcfldd-1.3.4.1
CATEGORIES=		sysutils

HOMEPAGE=		http://dcfldd.sourceforge.net/

MAINTAINER=		Brad Tilley <brad@16systems.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dcfldd/}

SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
