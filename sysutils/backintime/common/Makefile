# $OpenBSD: Makefile,v 1.7 2011/09/15 06:54:41 ajacoutot Exp $

COMMENT=	simple backup tool -- common files

PKGNAME=	backintime-common-${V}

WRKSRC=		${WRKDIST}/common

BUILD_DEPENDS=	devel/gettext
RUN_DEPENDS=	misc/fileutils \
		net/rsync

SUBST_FILES=	backintime config.py

.include <bsd.port.mk>
