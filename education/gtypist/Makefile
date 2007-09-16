# $OpenBSD: Makefile,v 1.15 2007/09/16 03:07:06 merdely Exp $

COMMENT=	interactive typing tutor

DISTNAME=	gtypist-2.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	education
HOMEPAGE=	http://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

MASTER_SITES=	${MASTER_SITE_GNU:=gtypist/}

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_EMACS=no

.include <bsd.port.mk>
