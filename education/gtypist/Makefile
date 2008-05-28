# $OpenBSD: Makefile,v 1.16 2008/05/28 16:09:06 naddy Exp $

COMMENT=	interactive typing tutor

DISTNAME=	gtypist-2.8
CATEGORIES=	education
HOMEPAGE=	http://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gtypist/}

WANTLIB=	c curses
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	EMACS=no

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/typefortune ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/tools/gtypist-mode.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
