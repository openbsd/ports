# $OpenBSD: Makefile,v 1.5 2001/10/29 09:24:09 shell Exp $

COMMENT=		"graphical interface for GnuPG"

DISTNAME=		gpa-0.4.2
CATEGORIES=     	security x11
NEED_VERSION=		1.487

HOMEPAGE=		http://www.gnupg.org/gpa.html

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/alpha/gpa/

BUILD_DEPENDS=		gpg::security/gnupg
RUN_DEPENDS=		${BUILD_DEPENDS}
MODULES+=		gtk

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
