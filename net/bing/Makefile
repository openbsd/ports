# $OpenBSD: Makefile,v 1.11 2001/10/28 13:05:48 espie Exp $

COMMENT=	"point-to-point bandwith measurement tool"

DISTNAME=	bing-1.0.4
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.lip6.fr/pub/networking/
NEED_VERSION=	1.402

HOMEPAGE=	http://www.fibrespeed.net/~mbabcock/mirrors/bing/bing.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bing
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bing

.include <bsd.port.mk>
