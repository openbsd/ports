# $OpenBSD: Makefile,v 1.7 2000/03/30 02:10:36 espie Exp $
#

DISTNAME=	kterm-6.2.0
PKGNAME=	ja-kterm-6.2.0
CATEGORIES=	japanese x11
NEED_VERSION=	 1.240
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications

LICENSE_TYPE=	X
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes


MASTER_SITES0=	ftp://ftp.sra.co.jp/pub/x11/kterm/
PATCHFILES=	kterm-6.2.0.NFS-xauth.patch:0

MAINTAINER=	ports@openbsd.org

USE_IMAKE=	Yes
FAKE=		Yes

FLAVORS=xaw3d
FLAVOR?=
.if ${FLAVOR:L} == "xaw3d"
LIB_DEPENDS=	Xaw3d.6.1::x11/Xaw3d
MAKE_ENV=EXTRA_DEFINES=-DKTERM_XAW3D
.elif ${FLAVOR:L} != ""
.BEGIN:
	@echo >&2 "Unknown flavor: ${FLAVOR}"
	@exit 1
.endif

.include <bsd.port.mk>
