# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:29 espie Exp $

COMMENT=		GNU dd with added forensic/security features

DISTNAME=		dcfldd-1.3.4-1
PKGNAME=		dcfldd-1.3.4.1
CATEGORIES=		sysutils

HOMEPAGE=		http://dcfldd.sourceforge.net/

MAINTAINER=		Brad Tilley <brad@16systems.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dcfldd/}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
