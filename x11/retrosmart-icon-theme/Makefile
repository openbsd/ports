# $OpenBSD: Makefile,v 1.2 2020/03/20 08:01:47 landry Exp $

COMMENT =	Haiku OS style icon theme

GH_ACCOUNT =	mdomlop
GH_PROJECT =	retrosmart-icon-theme
GH_COMMIT =	fb418400abe1d0973aa48e3802538faf4abad5ab
DISTNAME =	${GH_PROJECT}-0.20170803

CATEGORIES =	x11

# GPLv3/MIT/Unknown source
PERMIT_PACKAGE =	Unsure

PKG_ARCH =	*
CONFIGURE_STYLE =	simple
NO_TEST =	Yes

RUN_DEPENDS =	x11/gtk+3,-guic

post-install:
	rm -Rf ${PREFIX}/share/licenses ${PREFIX}/share/doc

.include <bsd.port.mk>
