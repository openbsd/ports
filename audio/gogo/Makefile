# $OpenBSD: Makefile,v 1.11 2000/10/22 14:02:50 espie Exp $

DISTNAME=	gogo226a	
PKGNAME=	gogo-2.26a
CATEGORIES=	audio
NEED_VERSION=	1.230
MASTER_SITES=	http://www.kurims.kyoto-u.ac.jp/~shigeo/soft/gogo2/src/
HOMEPAGE=	http://homepage1.nifty.com/herumi/gogo_e.html
EXTRACT_SUFX=	.tgz

ONLY_FOR_ARCHS= i386

BUILD_DEPENDS=	nasm::devel/nasm

MAINTAINER=	Bob Beck <beck@openbsd.org>

PERMIT_PACKAGE_CDROM=	MP3 patent, mp3licensing.com/details/software.html
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent. decoders are free. encoders are not.
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
MAKE_FLAGS=	E3DN=''

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gogo
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gogo/japandoc
	${INSTALL_MAN} ${WRKSRC}/*.txt ${PREFIX}/share/doc/gogo
	${INSTALL_DATA} ${WRKSRC}/japandoc/* ${PREFIX}/share/doc/gogo/japandoc

.include <bsd.port.mk>
