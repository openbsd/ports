# $OpenBSD: Makefile,v 1.8 2019/07/12 20:49:41 sthen Exp $

COMMENT=		GNU dd with added forensic/security features

DISTNAME=		dcfldd-1.3.4-1
PKGNAME=		dcfldd-1.3.4.1
REVISION=		0
CATEGORIES=		sysutils

HOMEPAGE=		http://dcfldd.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dcfldd/}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
