# $OpenBSD: Makefile,v 1.2 2000/10/05 21:15:50 jakob Exp $

DISTNAME=	postfix-19991231-pl09

MASTER_SITE_SUBDIR=	official

FLAVORS=	pcre
FLAVOR?=

.if ${FLAVOR:L:Mpcre}
LIB_DEPENDS+=	pcre::devel/pcre

MAKE_CCARGS+=	-I${PREFIX}/include -DHAS_PCRE
MAKE_AUXLIBS+=	-L${PREFIX}/lib -lpcre
.endif

.include <bsd.port.mk>
