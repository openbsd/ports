# $OpenBSD: Makefile,v 1.4 2000/03/24 09:45:43 brad Exp $

DISTNAME=	gogo224b	
CATEGORIES=	audio
MASTER_SITES=	http://www.kurims.kyoto-u.ac.jp/~shigeo/soft/gogo2/src/
EXTRACT_SUFX=	.tgz

NEED_VERSION=	1.223

ONLY_FOR_ARCHS= i386

BUILD_DEPENDS=	nasm:devel/nasm

MAINTAINER=	beck@openbsd.org

USE_GMAKE=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gogo
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gogo/japandoc
	${INSTALL_MAN} ${WRKSRC}/*.txt ${PREFIX}/share/doc/gogo
	${INSTALL_DATA} ${WRKSRC}/japandoc/* ${PREFIX}/share/doc/gogo/japandoc

.include <bsd.port.mk>
