# $OpenBSD: Makefile,v 1.9 2022/02/26 12:20:56 sthen Exp $

COMMENT=		GNU dd with added forensic/security features

GH_ACCOUNT=		resurrecting-open-source-projects
GH_PROJECT=		dcfldd
GH_TAGNAME=		v1.7.1

CATEGORIES=		sysutils

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
AUTORECONF=		${WRKSRC}/autogen.sh

.include <bsd.port.mk>
