# $OpenBSD: Makefile,v 1.4 2008/09/19 00:26:42 sthen Exp $

COMMENT=		C-based regular expression scanner generator

DISTNAME=		re2c-0.13.5
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=re2c/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
