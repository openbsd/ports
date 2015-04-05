# $OpenBSD: Makefile,v 1.4 2015/04/05 13:31:14 sthen Exp $

COMMENT =	quick access to files in a POSIX shell

PKG_ARCH =	*

GH_ACCOUNT =	clvv
GH_PROJECT =	fasd
GH_TAGNAME =	1.0.1
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES =	misc
HOMEPAGE =	https://github.com/clvv/fasd

# MIT/X11
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes
FAKE_FLAGS =	DESTDIR= MANDIR=${WRKINST}/${PREFIX}/man

.include <bsd.port.mk>
