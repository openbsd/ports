# $OpenBSD: Makefile,v 1.5 2015/05/23 16:34:40 czarkoff Exp $

COMMENT =	quick access to files in a POSIX shell

PKG_ARCH =	*

GH_ACCOUNT =	clvv
GH_PROJECT =	fasd
GH_TAGNAME =	1.0.1
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES =	misc

# MIT/X11
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes
FAKE_FLAGS =	DESTDIR= MANDIR=${WRKINST}/${PREFIX}/man

.include <bsd.port.mk>
