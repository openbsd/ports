# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:18 sthen Exp $

COMMENT =	ncurses Atom/RSS newsreader for the console
DISTNAME =	canto-0.7.10
REVISION =	5
CATEGORIES =	www

MASTER_SITES =	http://codezen.org/static/
HOMEPAGE =	http://codezen.org/canto/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += curses pthread

MODULES =	lang/python

RUN_DEPENDS =	textproc/py-chardet \
		textproc/py-feedparser

BUILD_DEPENDS =	${RUN_DEPENDS}

NO_TEST =	Yes

MODPY_ADJ_FILES = canto/canto_html.py \
		canto/cfg/base.py \
		canto/cfg/sources.py \
		canto/feedparser_builtin.py

.include <bsd.port.mk>
