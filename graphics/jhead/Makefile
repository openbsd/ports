# $OpenBSD: Makefile,v 1.13 2009/11/19 14:14:40 okan Exp $

COMMENT=	Exif jpeg camera setting parser and thumbnail remover

DISTNAME=	jhead-2.88
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

HOMEPAGE=	http://www.sentex.net/~mwandel/jhead/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

NO_REGRESS=	Yes

RUN_DEPENDS=	::graphics/jpeg

MAKE_FILE=	makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jhead ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/jhead.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jhead
	${INSTALL_DATA} ${WRKSRC}/usage.html ${PREFIX}/share/doc/jhead

.include <bsd.port.mk>
