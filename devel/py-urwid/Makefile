# $OpenBSD: Makefile,v 1.7 2010/08/30 22:24:16 jasper Exp $
PKG_ARCH=	*

COMMENT=	console user interface library for python
DISTNAME=	urwid-0.9.7.1
PKGNAME=	py-${DISTNAME}
REVISION =	3
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://excess.org/urwid/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS=Yes
MODPY_BADEGGS=	urwid

.include <bsd.port.mk>
