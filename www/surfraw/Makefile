# $OpenBSD: Makefile,v 1.11 2001/11/09 02:16:22 naddy Exp $

COMMENT=	"command line interface to popular WWW search engines"

PKGNAME=	${DISTNAME}p1
DISTNAME=	surfraw-1.0.5
CATEGORIES=	www
NEED_VERSION=	1.363
HOMEPAGE=	http://surfraw.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

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
