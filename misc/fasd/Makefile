# $OpenBSD: Makefile,v 1.1.1.1 2012/05/08 07:49:59 landry Exp $

COMMENT =	quick access to files in a POSIX shell

PKG_ARCH =	*
DISTNAME =	fasd-0.5.4

CATEGORIES =	misc
HOMEPAGE =	https://github.com/clvv/fasd
MASTER_SITES =	http://rhaalovely.net/stuff/

# MIT/X11
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

NO_BUILD =	Yes
NO_REGRESS =	Yes
FAKE_FLAGS =	DESTDIR= MANDIR=${WRKINST}/${PREFIX}/man

.include <bsd.port.mk>
