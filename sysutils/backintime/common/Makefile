# $OpenBSD: Makefile,v 1.2 2010/10/19 07:43:00 espie Exp $

COMMENT=	simple backup tool -- common files

PKGNAME=	backintime-common-${V}

WRKSRC=		${WRKDIST}/common

BUILD_DEPENDS=	::devel/gettext
RUN_DEPENDS=	::misc/fileutils

SUBST_FILES=	backintime config.py
USE_GROFF =	Yes

.include <bsd.port.mk>
