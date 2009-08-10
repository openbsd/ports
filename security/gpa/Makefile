# $OpenBSD: Makefile,v 1.18 2009/08/10 06:34:29 kili Exp $

COMMENT=	graphical interface for GnuPG

VERSION=	0.4.3
DISTNAME=	gpa-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=    	security x11

HOMEPAGE=	http://www.gnupg.org/gpa.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule m pthread-stubs xcb

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/alpha/gpa/

MODULES=	devel/gettext

RUN_DEPENDS=	:gnupg-*:security/gnupg
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
