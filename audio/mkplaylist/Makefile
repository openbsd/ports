# $OpenBSD: Makefile,v 1.11 2019/05/04 01:18:58 danj Exp $

COMMENT=		creates playlists from directory trees

MODPY_EGG_VERSION=	0.4.5
DISTNAME=		mkplaylist-${MODPY_EGG_VERSION}
REVISION =		5
CATEGORIES=		audio
HOMEPAGE=		http://bj.spline.de/software.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://bj.spline.de/download/mkplaylist/

MODULES=	lang/python
PKG_ARCH =	*

NO_TEST=	Yes

pre-patch:
	@cp ${FILESDIR}/setup.py ${WRKSRC}/.
	@mv ${WRKSRC}/mkplaylist.py ${WRKSRC}/mkplaylist

post-install:
	${INSTALL_MAN} ${FILESDIR}/mkplaylist.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
