# $OpenBSD: Makefile,v 1.28 2013/06/10 15:46:56 naddy Exp $

COMMENT=	interactive typing tutor

DISTNAME=	gtypist-2.9.3
CATEGORIES=	education
HOMEPAGE=	http://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gtypist/}

WANTLIB=	c ncursesw
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${WRKDIR}/include" EMACS=no

MAKE_FLAGS=	'gtypist_LDADD=$$(LTLIBINTL)'

# wide curses header expected at <ncursesw/ncurses.h>
pre-configure:
	mkdir ${WRKDIR}/include
	ln -s /usr/include ${WRKDIR}/include/ncursesw

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/tools/gtypist-mode.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
