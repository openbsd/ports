# $OpenBSD: Makefile,v 1.15 2013/03/11 11:41:28 espie Exp $

COMMENT=	steganography detection tool
DISTNAME=	stegdetect-0.6
REVISION =	3
CATEGORIES=	security graphics
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.outguess.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m

NO_TEST=	Yes
USE_GROFF =	Yes

AUTOCONF_VERSION=2.52
CONFIGURE_STYLE=autoconf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/{stegdetect,stegbreak} \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk> 
