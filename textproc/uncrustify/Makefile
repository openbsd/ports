# $OpenBSD: Makefile,v 1.3 2011/10/13 21:03:53 rpointel Exp $

COMMENT =		source code beautifier

DISTNAME =		uncrustify-0.59
REVISION =		0

CATEGORIES =		textproc devel

HOMEPAGE =		http://uncrustify.sourceforge.net/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uncrustify/}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--mandir=${LOCALBASE}/man/

MODULES =	lang/python

MAKE_FLAGS = V=1

MODPY_RUNDEP = No
MODPY_BUILDDEP = No

do-regress:
	cd ${WRKSRC}/tests && ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
