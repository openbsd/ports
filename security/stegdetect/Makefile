# $OpenBSD: Makefile,v 1.10 2010/03/24 17:10:37 jasper Exp $

COMMENT=	steganography detection tool
DISTNAME=	stegdetect-0.6
PKGNAME=	${DISTNAME}p2
CATEGORIES=	security graphics
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.outguess.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto m

NO_REGRESS=	Yes
USE_X11=	Yes

AUTOCONF_VERSION=2.52
CONFIGURE_STYLE=autoconf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/{stegdetect,stegbreak} \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk> 
