# $OpenBSD: Makefile,v 1.4 2000/12/23 13:04:53 naddy Exp $

DISTNAME=	lopster-0.9.7.2
CATEGORIES=	audio
NEED_VERSION=	1.346
MASTER_SITES=	http://lopster.sourceforge.net/ \
		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= lopster

HOMEPAGE=	http://lopster.sourceforge.net

LIB_DEPENDS=	gtk.1.2::x11/gtk+

MAINTAINER=	Cameron Lerch <opcode@skylab.saturn5.yi.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
