# $OpenBSD: Makefile,v 1.7 2015/01/05 14:45:39 benoit Exp $

COMMENT =		source code beautifier

DISTNAME =		uncrustify-0.61

CATEGORIES =		textproc devel

HOMEPAGE =		http://uncrustify.sourceforge.net/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uncrustify/}

CONFIGURE_STYLE =	gnu

MODULES =	lang/python

MAKE_FLAGS = V=1

MODPY_RUNDEP = No
MODPY_BUILDDEP = No

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
