# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:41 espie Exp $

COMMENT =	ncurses Atom/RSS newsreader for the console
DISTNAME =	canto-0.7.10
REVISION =	2
CATEGORIES =	www

MASTER_SITES =	http://codezen.org/static/
HOMEPAGE =	http://codezen.org/canto/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	ncursesw

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
