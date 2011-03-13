# $OpenBSD: Makefile,v 1.2 2011/03/13 09:36:24 dcoppa Exp $

COMMENT =	ncurses Atom/RSS newsreader for the console
DISTNAME =	canto-0.7.10
REVISION =	0
CATEGORIES =	www

MASTER_SITES =	http://codezen.org/static/
HOMEPAGE =	http://codezen.org/canto/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB +=	ncursesw

MODULES =	lang/python

RUN_DEPENDS =	textproc/py-chardet \
		textproc/py-feedparser

BUILD_DEPENDS =	${RUN_DEPENDS}

NO_REGRESS =	Yes

MODPY_ADJ_FILES = canto/canto_html.py \
		canto/cfg/base.py \
		canto/cfg/sources.py \
		canto/feedparser_builtin.py

.include <bsd.port.mk>
