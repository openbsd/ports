# $OpenBSD: Makefile,v 1.5 2000/12/10 18:55:53 jakob Exp $

DISTNAME=	postfix-19991231-pl13

MASTER_SITE_SUBDIR=	official

FLAVORS=	pcre
FLAVOR?=

.if ${FLAVOR:L:Mpcre}
LIB_DEPENDS+=	pcre::devel/pcre

MAKE_CCARGS+=	-I${PREFIX}/include -DHAS_PCRE
MAKE_AUXLIBS+=	-L${PREFIX}/lib -lpcre
.endif

.include <bsd.port.mk>
