# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:02 espie Exp $

COMMENT =	analyze C source files and print a call graph

DISTNAME =	cflow-1.4
CATEGORIES =	devel

HOMEPAGE =	http://www.gnu.org/software/cflow/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_GNU:=cflow/}

MODULES =		devel/gettext

MAKE_FLAGS =		LIBINTL="-L${LOCALBASE}/lib -liconv -lintl"

USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/elisp/cflow-mode.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
