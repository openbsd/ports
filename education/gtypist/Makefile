# $OpenBSD: Makefile,v 1.18 2009/02/04 21:04:42 naddy Exp $

COMMENT=	interactive typing tutor

DISTNAME=	gtypist-2.8.2
CATEGORIES=	education
HOMEPAGE=	http://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gtypist/}

WANTLIB=	c curses m
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	EMACS=no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/tools/gtypist-mode.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
