# $OpenBSD: Makefile,v 1.4 2013/03/11 11:42:47 espie Exp $

COMMENT =		source code beautifier

DISTNAME =		uncrustify-0.59
REVISION =		0

CATEGORIES =		textproc devel

HOMEPAGE =		http://uncrustify.sourceforge.net/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uncrustify/}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--mandir=${LOCALBASE}/man/

MODULES =	lang/python

MAKE_FLAGS = V=1

MODPY_RUNDEP = No
MODPY_BUILDDEP = No

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
