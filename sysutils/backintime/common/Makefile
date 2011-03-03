# $OpenBSD: Makefile,v 1.5 2011/03/03 13:49:27 ajacoutot Exp $

COMMENT=	simple backup tool -- common files

PKGNAME=	backintime-common-${V}

WRKSRC=		${WRKDIST}/common

BUILD_DEPENDS=	devel/gettext
RUN_DEPENDS=	misc/fileutils \
		net/rsync

SUBST_FILES=	backintime config.py
USE_GROFF =	Yes

.include <bsd.port.mk>
