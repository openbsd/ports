# $OpenBSD: Makefile,v 1.6 2013/10/11 23:50:55 naddy Exp $

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

.include <bsd.port.mk>
