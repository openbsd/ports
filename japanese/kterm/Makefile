# $OpenBSD: Makefile,v 1.3 2000/02/02 17:02:39 espie Exp $
#

DISTNAME=	kterm-6.2.0
PKGNAME=	ja-kterm-6.2.0
CATEGORIES=	japanese x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications
NEED_VERSION=	1.175


MASTER_SITES0=	ftp://ftp.sra.co.jp/pub/x11/kterm/
PATCHFILES=	kterm-6.2.0.NFS-xauth.patch:0

MAINTAINER=	ports@openbsd.org

USE_IMAKE=	Yes

.if exists(/usr/X11R6/lib/libXaw3d.a) && !defined(PACKAGE_BUILDING)
post-patch:
	@${ECHO_MSG}  "===>  Applying Xaw3d scrollbar patch"
	@${PATCH} ${PATCH_ARGS} < ${FILESDIR}/patch-0
.endif

.include <bsd.port.mk>
