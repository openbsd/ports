# $OpenBSD: Makefile,v 1.11 2015/03/27 11:34:58 sthen Exp $

COMMENT=		C-based regular expression scanner generator

DISTNAME=		re2c-0.14.2
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=re2c/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
