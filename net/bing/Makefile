# $OpenBSD: Makefile,v 1.12 2002/03/21 21:09:19 espie Exp $

COMMENT=	"point-to-point bandwith measurement tool"

DISTNAME=	bing-1.0.4
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.lip6.fr/pub/networking/
NEED_VERSION=	1.515

HOMEPAGE=	http://www.fibrespeed.net/~mbabcock/mirrors/bing/bing.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bing
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bing

.include <bsd.port.mk>
