# $OpenBSD: Makefile,v 1.15 2000/10/22 14:03:54 espie Exp $

DISTNAME=	bluefish-0.4
CATEGORIES=	www 
NEED_VERSION=	1.312

HOMEPAGE=	http://bluefish.openoffice.nl/

MAINTAINER=	Sean Cavanaugh <seanc@cginfo.sk.ca>

MASTER_SITES=	${HOMEPAGE}/download/ \
		http://www.student.wau.nl/~olivier/bluefish/download/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	weblint::www/weblint
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gdk_imlib::graphics/imlib

CONFIGURE_STYLE= gnu dest
CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib'

MANCOMPRESSED=	Yes
MAN1=		bluefish.1

.include <bsd.port.mk>
