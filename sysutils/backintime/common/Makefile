# $OpenBSD: Makefile,v 1.10 2012/03/20 16:36:16 naddy Exp $

COMMENT=	simple backup tool -- common files

PKGNAME=	backintime-common-${V}
REVISION=	2

WRKSRC=		${WRKDIST}/common

BUILD_DEPENDS=	devel/gettext
RUN_DEPENDS=	sysutils/coreutils \
		net/rsync

SUBST_FILES=	backintime config.py

# XXX
post-patch:
	perl -pi -e 's,1.0.7,1.0.8,g' ${WRKSRC}/config.py

.include <bsd.port.mk>
