# $OpenBSD: Makefile,v 1.2 2009/03/10 21:52:44 espie Exp $

COMMENT=		creates playlists from directory trees

MODPY_EGG_VERSION= 	0.4.5
DISTNAME=		mkplaylist-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME}p0
CATEGORIES=		audio
HOMEPAGE=		http://bj.spline.de/software.html

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://bj.spline.de/download/mkplaylist/

MODULES=	lang/python	
PKG_ARCH =	*

NO_REGRESS=	Yes

pre-patch:
	@cp ${FILESDIR}/setup.py ${WRKSRC}/.
	@mv ${WRKSRC}/mkplaylist.py ${WRKSRC}/mkplaylist

post-install:
	${INSTALL_MAN} files/mkplaylist.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
