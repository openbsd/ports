# $OpenBSD: Makefile,v 1.10 2000/10/22 15:42:23 espie Exp $
#

DISTNAME=	kterm-6.2.0
PKGNAME=	ja-kterm-6.2.0
CATEGORIES=	japanese x11
NEED_VERSION=	1.305
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

CONFIGURE_STYLE=imake
MAKE_FLAGS=	CDEBUGFLAGS=-O2

FLAVORS=xaw3d tek
FLAVOR?=
.if ${FLAVOR:L:Mxaw3d}
LIB_DEPENDS=	Xaw3d.6.1::x11/Xaw3d
MAKE_ENV=EXTRA_DEFINES=-DKTERM_XAW3D
.endif

.if ${FLAVOR:L:Mtek}
pre-configure:
	perl -pi.bak -e 's/define KTERM_NOTEK/undef KTERM_NOTEK/;' ${WRKSRC}/kterm.h
.endif

.include <bsd.port.mk>
