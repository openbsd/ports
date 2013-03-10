# $OpenBSD: Makefile,v 1.21 2013/03/10 22:55:02 espie Exp $

COMMENT=	686 class CPU optimized mp3 encoder
DISTNAME=	gogo226a
PKGNAME=	gogo-2.26a
CATEGORIES=	audio
MASTER_SITES=	http://www.kurims.kyoto-u.ac.jp/~shigeo/soft/gogo2/src/ \
		http://spacehopper.org/mirrors/
HOMEPAGE=	http://homepage1.nifty.com/herumi/gogo_e.html
EXTRACT_SUFX=	.tgz

ONLY_FOR_ARCHS= i386

BUILD_DEPENDS=	devel/nasm

MAINTAINER=	Bob Beck <beck@openbsd.org>

PERMIT_PACKAGE_CDROM=	MP3 patent, mp3licensing.com/details/software.html
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m

USE_GMAKE=	Yes
MAKE_FLAGS=	E3DN=''
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gogo
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gogo/japandoc
	${INSTALL_MAN} ${WRKSRC}/*.txt ${PREFIX}/share/doc/gogo
	${INSTALL_DATA} ${WRKSRC}/japandoc/* ${PREFIX}/share/doc/gogo/japandoc

.include <bsd.port.mk>
