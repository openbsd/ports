# $OpenBSD: Makefile,v 1.1.1.1 2010/05/04 12:53:49 ajacoutot Exp $

COMMENT=	simple backup tool -- common files

PKGNAME=	backintime-common-${V}

WRKSRC=		${WRKDIST}/common

BUILD_DEPENDS=	::devel/gettext
RUN_DEPENDS=	::misc/fileutils

SUBST_FILES=	backintime config.py

.include <bsd.port.mk>
