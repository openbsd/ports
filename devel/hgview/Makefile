# $OpenBSD: Makefile,v 1.2 2014/09/16 13:15:52 edd Exp $

COMMENT =		fast Mercurial log navigator

MODPY_EGG_VERSION =	1.8.2
DISTNAME =		hgview-${MODPY_EGG_VERSION}

CATEGORIES =		devel
HOMEPAGE =		http://www.hgview.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=h/hgview/}
MODULES =		lang/python
BUILD_DEPENDS =		textproc/asciidoc \
			textproc/xmlto \
			x11/py-qt4 \
			devel/mercurial
RUN_DEPENDS =		x11/py-qt4 \
			editors/py-qscintilla \
			devel/py-urwid \
			devel/mercurial

USE_GMAKE =		Yes
NO_TEST =		Yes

# Aside from the examples, the doc dir is empty. Check this is still
# the case when updating.
post-install:
	mv ${PREFIX}/share/doc/hgview/examples/ \
		${PREFIX}/share/examples/hgview
	rm -Rf ${PREFIX}/share/doc/hgview


.include <bsd.port.mk>
