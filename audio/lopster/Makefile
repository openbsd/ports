# $OpenBSD: Makefile,v 1.9 2001/12/23 03:38:01 obecian Exp $

COMMENT=	"full featured GTK Napster client"
DISTNAME=	lopster-0.9.9
CATEGORIES=	audio
NEED_VERSION=	1.500
MASTER_SITES=	http://lopster.sourceforge.net/download/ \
		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= lopster

HOMEPAGE=	http://lopster.sourceforge.net

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAINTAINER=	Cameron Lerch <opcode@skylab.saturn5.yi.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
