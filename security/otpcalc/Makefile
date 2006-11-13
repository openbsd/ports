# $OpenBSD: Makefile,v 1.5 2006/11/13 12:51:15 steven Exp $

COMMENT=	"OTP and S/Key calculator for X"

DISTNAME=	otpCalc-0.97
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	security

HOMEPAGE=	http://original.killa.net/infosec/otpCalc/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m X11 Xext Xi glib gmodule

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu dest

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	otpCalc otpCalc.1
LIB_DEPENDS=	gtk.>=2,gdk.>=2::x11/gtk+

NO_REGRESS=	Yes

.include <bsd.port.mk>
