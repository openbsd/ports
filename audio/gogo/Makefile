# $OpenBSD: Makefile,v 1.1.1.1 2000/01/31 01:19:39 beck Exp $

DISTNAME=	gogo224b	
BUILD_DEPENDS=	nasm-0.98:${PORTSDIR}/devel/nasm
ONLY_FOR_ARCHS= i386
EXTRACT_SUFX=	.tgz
USE_GMAKE=	Yes
CATEGORIES=	audio
MASTER_SITES=	http://www.kurims.kyoto-u.ac.jp/~shigeo/soft/gogo2/src/

MAINTAINER=	beck@openbsd.org

post-install:
	@${MKDIR} ${PREFIX}/share/doc/gogo
	${INSTALL_MAN} ${WRKSRC}/*.txt ${PREFIX}/share/doc/gogo
	@${MKDIR} ${PREFIX}/share/doc/gogo/japandoc
	${INSTALL_DATA} ${WRKSRC}/japandoc/* ${PREFIX}/share/doc/gogo/japandoc

.include <bsd.port.mk>
