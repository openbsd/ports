# $OpenBSD: Makefile,v 1.23 2002/05/29 05:11:37 form Exp $
# $RuOBSD: Makefile,v 1.2 2002/05/21 12:19:30 form Exp $

COMMENT=		"GUI toolkit for X11"

DISTNAME=		xforms-0.9999
CATEGORIES=		x11
NEED_VERSION=		1.527
MASTER_SITES=		ftp://ncmir.ucsd.edu/pub/xforms/OpenSource/
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://world.std.com/~xforms/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=		Oleg Safiullin <form@openbsd.org>

USE_X11=		Yes
CONFIGURE_STYLE=	imake

BUILD_DEPENDS=		::graphics/jpeg

.include <bsd.port.mk>
