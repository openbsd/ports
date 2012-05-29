# $OpenBSD: Makefile,v 1.11 2012/05/29 10:21:56 ajacoutot Exp $

COMMENT=	simple backup tool -- common files

PKGNAME=	backintime-common-${V}
REVISION=	3

WRKSRC=		${WRKDIST}/common

BUILD_DEPENDS=	devel/gettext
RUN_DEPENDS=	sysutils/coreutils \
		net/rsync

SUBST_FILES=	backintime config.py

.include <bsd.port.mk>
