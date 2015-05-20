# $OpenBSD: Makefile,v 1.12 2015/05/20 14:07:23 sthen Exp $

COMMENT=		C-based regular expression scanner generator

DISTNAME=		re2c-0.14.3
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=re2c/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
