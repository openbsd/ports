# $OpenBSD: Makefile,v 1.9 2011/09/16 11:41:39 espie Exp $

COMMENT=	simple backup tool -- common files

PKGNAME=	backintime-common-${V}
REVISION=	1

WRKSRC=		${WRKDIST}/common

BUILD_DEPENDS=	devel/gettext
RUN_DEPENDS=	misc/fileutils \
		net/rsync

SUBST_FILES=	backintime config.py

# XXX
post-patch:
	perl -pi -e 's,1.0.7,1.0.8,g' ${WRKSRC}/config.py

.include <bsd.port.mk>
