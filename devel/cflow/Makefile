# $OpenBSD: Makefile,v 1.4 2009/08/12 12:25:38 benoit Exp $

COMMENT =	analyze C source files and print a call graph

DISTNAME =	cflow-1.3
CATEGORIES =	devel

HOMEPAGE =	http://www.gnu.org/software/cflow/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_GNU:=cflow/}

MODULES =		devel/gettext

MAKE_FLAGS =		LIBINTL="-L${LOCALBASE}/lib -liconv -lintl"

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/elisp/cflow-mode.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
