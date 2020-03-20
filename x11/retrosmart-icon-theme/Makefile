# $OpenBSD: Makefile,v 1.1.1.1 2020/03/20 07:10:27 landry Exp $

COMMENT =	Haiku OS style icon theme

GH_ACCOUNT =	mdomlop
GH_PROJECT =	retrosmart-icon-theme
GH_COMMIT =	fb418400abe1d0973aa48e3802538faf4abad5ab
DISTNAME =	${GH_PROJECT}-0.20170803

CATEGORIES =	x11

# GPLv3/MIT/Unknown source
PERMIT_PACKAGE =	Unsure

PKG_ARCH =	*
MAKE_FILE =	makefile
NO_TEST =	Yes

RUN_DEPENDS =	x11/gtk+3,-guic
BUILD_DEPENDS =	shells/bash

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/bash ./configure

post-install:
	rm -Rf ${PREFIX}/share/licenses ${PREFIX}/share/doc

.include <bsd.port.mk>
