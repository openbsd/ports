# $OpenBSD: Makefile,v 1.16 2007/09/15 20:38:26 merdely Exp $

COMMENT=	command line interface to popular WWW search engines

DISTNAME=	surfraw-1.0.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www
HOMEPAGE=	http://surfraw.sourceforge.net/

# Public Domain 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.netbsd.org/pub/NetBSD/misc/proff/ \
		ftp://ftp.funet.fi/pub/NetBSD/misc/proff/

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA} ${WRKSRC}/surfraw.conf ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/surfraw
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/HACKING \
		${PREFIX}/share/doc/surfraw

.include <bsd.port.mk>
