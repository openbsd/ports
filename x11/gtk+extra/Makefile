# $OpenBSD: Makefile,v 1.2 2005/02/21 19:55:37 alek Exp $

COMMENT=	"GTK Extra Widget Set"

DISTNAME=	gtk+extra-0.99.17
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11 devel

HOMEPAGE=	http://gtkextra.sourceforge.net
MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/src/

BUILD_DEPENDS=	gtk.1.2,glib.1.2::x11/gtk+
RUN_DEPENDS=	${BUILD_DEPENDS}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
