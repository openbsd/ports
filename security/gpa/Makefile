# $OpenBSD: Makefile,v 1.4 2001/10/24 12:33:49 espie Exp $

COMMENT=		"graphical interface for GnuPG"

DISTNAME=		gpa-0.4.2
CATEGORIES=     	security x11
NEED_VERSION=		1.474

HOMEPAGE=		http://www.gnupg.org/gpa.html

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/alpha/gpa/

BUILD_DEPENDS=		gpg::security/gnupg
RUN_DEPENDS=		${BUILD_DEPENDS}
LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
