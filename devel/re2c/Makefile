# $OpenBSD: Makefile,v 1.8 2013/07/06 08:22:04 sthen Exp $

COMMENT=		C-based regular expression scanner generator

DISTNAME=		re2c-0.13.6
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=re2c/}

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
