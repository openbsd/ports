COMMENT =	analyze C source files and print a call graph

DISTNAME =	cflow-1.8
CATEGORIES =	devel

HOMEPAGE =	https://www.gnu.org/software/cflow/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE =		Yes

WANTLIB =  c iconv intl pthread

SITES =			${SITE_GNU:=cflow/}

LIB_DEPENDS =		devel/gettext,-runtime

MAKE_FLAGS =		LIBINTL="-L${LOCALBASE}/lib -liconv -lintl"

USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	EMACS=no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/elisp/cflow-mode.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
