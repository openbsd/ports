COMMENT=	interactive typing tutor

DISTNAME=	gtypist-2.10
REVISION=	0
CATEGORIES=	education
HOMEPAGE=	https://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses iconv intl pthread

SITES=		${SITE_GNU:=gtypist/}
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		EMACS=no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/tools/gtypist-mode.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
