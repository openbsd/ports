# $OpenBSD: Makefile,v 1.11 2002/05/13 18:50:36 espie Exp $

COMMENT=	"full featured GTK Napster client"
DISTNAME=	lopster-0.9.9
CATEGORIES=	audio
NEED_VERSION=	1.500
MASTER_SITES=	http://lopster.sourceforge.net/download/ \
		${MASTER_SITE_SOURCEFORGE:=lopster/}

HOMEPAGE=	http://lopster.sourceforge.net

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAINTAINER=	Cameron Lerch <opcode@skylab.saturn5.yi.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	gettext

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
