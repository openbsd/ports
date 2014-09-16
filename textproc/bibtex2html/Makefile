# $OpenBSD: Makefile,v 1.1.1.1 2014/09/16 18:01:08 jasper Exp $

COMMENT =		collection of tools for translating from BibTeX to HTML

DISTNAME =		bibtex2html-1.98

CATEGORIES =		textproc
HOMEPAGE =		https://www.lri.fr/~filliatr/bibtex2html/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m

MASTER_SITES =		${HOMEPAGAE}

BUILD_DEPENDS =		lang/ocaml \
			print/texlive/base \
			textproc/hevea
RUN_DEPENDS =		print/texlive/base

FAKE_FLAGS =		DOCDIR="${DESTDIR}${PREFIX}/share/doc/bibtex2html"

CONFIGURE_STYLE =	gnu dest

INSTALL_TARGET =	install install-doc
TEST_TARGET =		test

.include <bsd.port.mk>
