# $OpenBSD: Makefile,v 1.1.1.1 2001/05/07 03:12:07 shell Exp $

COMMENT=		'graphical interface for GnuPG'

DISTNAME=		gpa-0.4.1
CATEGORIES=     	security x11
NEED_VERSION=		1.407

HOMEPAGE=		http://www.gnupg.org/gpa.html

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/alpha/gpa/

RUN_DEPENDS=		gpg::security/gnupg
LIB_DEPENDS=		gtk.1.2::x11/gtk+

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
