# $OpenBSD: Makefile,v 1.3 2000/10/03 14:05:05 kevlo Exp $

DISTNAME=	lopster-0.9.4
CATEGORIES=	audio
NEED_VERSION=	1.337
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= lopster

HOMEPAGE=	http://lopster.sourceforge.net

LIB_DEPENDS=	gtk.1.2::x11/gtk+

MAINTAINER=	Cameron Lerch <opcode@skylab.2y.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
