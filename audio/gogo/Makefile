# $OpenBSD: Makefile,v 1.7 2000/03/26 02:29:58 espie Exp $

DISTNAME=	gogo224b	
PKGNAME=	gogo-2.24b
CATEGORIES=	audio
NEED_VERSION=	1.230
MASTER_SITES=	http://www.kurims.kyoto-u.ac.jp/~shigeo/soft/gogo2/src/
EXTRACT_SUFX=	.tgz


ONLY_FOR_ARCHS= i386

BUILD_DEPENDS=	nasm::devel/nasm

MAINTAINER=	beck@openbsd.org

USE_GMAKE=	Yes
FAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gogo
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gogo/japandoc
	${INSTALL_MAN} ${WRKSRC}/*.txt ${PREFIX}/share/doc/gogo
	${INSTALL_DATA} ${WRKSRC}/japandoc/* ${PREFIX}/share/doc/gogo/japandoc

.include <bsd.port.mk>
