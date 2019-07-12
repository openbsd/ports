# $OpenBSD: Makefile,v 1.36 2019/07/12 20:46:07 sthen Exp $

COMMENT=	interactive typing tutor

DISTNAME=	gtypist-2.9.5
REVISION=	3
CATEGORIES=	education
HOMEPAGE=	https://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv intl

MASTER_SITES=	${MASTER_SITE_GNU:=gtypist/}
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${WRKDIR}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" EMACS=no

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
