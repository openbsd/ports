# $OpenBSD: Makefile,v 1.2 1998/10/18 05:02:07 marc Exp $
#

DISTNAME=	kterm-6.2.0
PKGNAME=	ja-kterm-6.2.0
CATEGORIES=	japanese x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications


PATCH_SITES=	ftp://ftp.sra.co.jp/pub/x11/kterm/
PATCHFILES=	kterm-6.2.0.NFS-xauth.patch

MAINTAINER=	ports@openbsd.org

USE_IMAKE=	yes

.if exists(/usr/X11R6/lib/libXaw3d.a) && !defined(PACKAGE_BUILDING)
post-patch:
	@${ECHO_MSG}  "===>  Applying Xaw3d scrollbar patch"
	@${PATCH} ${PATCH_ARGS} < ${FILESDIR}/patch-0
.endif

.include <bsd.port.mk>
