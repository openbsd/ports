# $OpenBSD: Makefile,v 1.3 2010/11/17 16:34:43 ajacoutot Exp $

COMMENT=	simple backup tool -- common files

PKGNAME=	backintime-common-${V}
REVISION=	0

WRKSRC=		${WRKDIST}/common

BUILD_DEPENDS=	::devel/gettext
RUN_DEPENDS=	::misc/fileutils \
		::net/rsync

SUBST_FILES=	backintime config.py
USE_GROFF =	Yes

.include <bsd.port.mk>
