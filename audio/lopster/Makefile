# $OpenBSD: Makefile,v 1.14 2002/08/20 07:54:57 mark Exp $

COMMENT=	"full featured GTK Napster client"
DISTNAME=	lopster-1.0.1
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lopster/}

HOMEPAGE=	http://lopster.sourceforge.net/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAINTAINER=	Mark Grimes <mark@openbsd.org>

# GPL
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
