# $OpenBSD: Makefile,v 1.9 2014/04/20 10:00:21 jasper Exp $

COMMENT=		creates playlists from directory trees

MODPY_EGG_VERSION=	0.4.5
DISTNAME=		mkplaylist-${MODPY_EGG_VERSION}
REVISION =		3
CATEGORIES=		audio
HOMEPAGE=		http://bj.spline.de/software.html

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://bj.spline.de/download/mkplaylist/

MODULES=	lang/python
PKG_ARCH =	*

USE_GROFF =	Yes
NO_TEST=	Yes

pre-patch:
	@cp ${FILESDIR}/setup.py ${WRKSRC}/.
	@mv ${WRKSRC}/mkplaylist.py ${WRKSRC}/mkplaylist

post-install:
	${INSTALL_MAN} ${FILESDIR}/mkplaylist.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
