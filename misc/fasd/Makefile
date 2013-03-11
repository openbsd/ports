# $OpenBSD: Makefile,v 1.2 2013/03/11 11:23:57 espie Exp $

COMMENT =	quick access to files in a POSIX shell

PKG_ARCH =	*
DISTNAME =	fasd-0.5.4

CATEGORIES =	misc
HOMEPAGE =	https://github.com/clvv/fasd
MASTER_SITES =	http://rhaalovely.net/stuff/

# MIT/X11
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes
FAKE_FLAGS =	DESTDIR= MANDIR=${WRKINST}/${PREFIX}/man

.include <bsd.port.mk>
