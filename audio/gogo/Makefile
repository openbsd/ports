# $OpenBSD: Makefile,v 1.3 2000/03/05 18:30:21 espie Exp $

DISTNAME=	gogo224b	
BUILD_DEPENDS=	nasm-0.98:devel/nasm
ONLY_FOR_ARCHS= i386
EXTRACT_SUFX=	.tgz
USE_GMAKE=	Yes
CATEGORIES=	audio
NEED_VERSION=	1.223
MASTER_SITES=	http://www.kurims.kyoto-u.ac.jp/~shigeo/soft/gogo2/src/

MAINTAINER=	beck@openbsd.org

post-install:
	@mkdir -p ${PREFIX}/share/doc/gogo
	${INSTALL_MAN} ${WRKSRC}/*.txt ${PREFIX}/share/doc/gogo
	@mkdir -p ${PREFIX}/share/doc/gogo/japandoc
	${INSTALL_DATA} ${WRKSRC}/japandoc/* ${PREFIX}/share/doc/gogo/japandoc

.include <bsd.port.mk>
