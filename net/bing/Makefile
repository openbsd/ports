# $OpenBSD: Makefile,v 1.17 2006/10/09 09:42:24 espie Exp $

COMMENT=	"point-to-point bandwidth measurement tool"

DISTNAME=	bing-1.0.4
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.lip6.fr/pub/networking/

HOMEPAGE=	http://www.fibrespeed.net/~mbabcock/mirrors/bing/bing.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bing
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bing

.include <bsd.port.mk>
