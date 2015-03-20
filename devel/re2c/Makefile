# $OpenBSD: Makefile,v 1.10 2015/03/20 12:31:30 sthen Exp $

COMMENT=		C-based regular expression scanner generator

DISTNAME=		re2c-0.14.1
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=re2c/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
