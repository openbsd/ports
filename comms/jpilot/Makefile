# $OpenBSD: Makefile,v 1.21 2002/02/18 23:41:43 pvalchev Exp $

COMMENT=	"desktop organizer software for the palm pilot"

DISTNAME=	jpilot-0.99.2
PKGNAME=	${DISTNAME}
CATEGORIES=	comms palm
NEED_VERSION=	1.504

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.jpilot.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		patch-*

LIB_DEPENDS=	pisock.3:pilot-link-*:comms/pilot-link \
		gtk.1.2,gdk.1.2:gtk+-*:x11/gtk+

MODULES=	gettext

USE_X11=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
