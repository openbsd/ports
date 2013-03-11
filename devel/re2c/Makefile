# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:27 espie Exp $

COMMENT=		C-based regular expression scanner generator

DISTNAME=		re2c-0.13.5
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
