# $OpenBSD: Makefile,v 1.4 2000/11/22 16:26:51 jakob Exp $

DISTNAME=	postfix-19991231-pl11

MASTER_SITE_SUBDIR=	official

FLAVORS=	pcre
FLAVOR?=

.if ${FLAVOR:L:Mpcre}
LIB_DEPENDS+=	pcre::devel/pcre

MAKE_CCARGS+=	-I${PREFIX}/include -DHAS_PCRE
MAKE_AUXLIBS+=	-L${PREFIX}/lib -lpcre
.endif

.include <bsd.port.mk>
