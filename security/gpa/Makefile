# $OpenBSD: Makefile,v 1.11 2002/12/29 20:31:40 fgsch Exp $

COMMENT=	"graphical interface for GnuPG"

VERSION=	0.4.3
DISTNAME=	gpa-${VERSION}
CATEGORIES=    	security x11

HOMEPAGE=	http://www.gnupg.org/gpa.html

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/alpha/gpa/

BUILD_DEPENDS=	:gnupg-*:security/gnupg
RUN_DEPENDS=	${BUILD_DEPENDS}
LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
