# $OpenBSD: Makefile,v 1.16 2004/10/08 20:31:37 sturm Exp $

COMMENT=	"animate your root-cursor"

DISTNAME=	xaniroc
PKGNAME=	xaniroc-1.02
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.42.org/pub/orphan/
EXTRACT_SUFX=	.src.tar.Z

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

USE_X11=	Yes
CONFIGURE_STYLE=	imake

post-extract:
	mv ${WRKSRC}/manpage.1 ${WRKSRC}/xaniroc.man

NO_REGRESS=	Yes

.include <bsd.port.mk>
