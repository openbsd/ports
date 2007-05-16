# $OpenBSD: Makefile,v 1.1.1.1 2007/05/16 14:10:57 steven Exp $

COMMENT=		"C-based regular expression scanner generator"

DISTNAME=		re2c-0.12.0
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=re2c/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
