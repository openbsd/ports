# $OpenBSD: Makefile,v 1.58 2002/12/20 16:26:22 jakob Exp $

VERSION=	1.1.12-20021219

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

FLAVORS+=	sasl2
FLAVOR?=

.if ${FLAVOR:L:Msasl2}
LIB_DEPENDS+=	sasl2::security/cyrus-sasl2
MAKE_CCARGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/sasl -DUSE_SASL_AUTH 
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl2
.endif

TLSVERSION=	0.8.12
TLSPFIXVERSION=	1.1.12-20021219
TLSSSLVERSION=	0.9.6h
TLSDISTNAME=	pfixtls-${TLSVERSION}-${TLSPFIXVERSION}-${TLSSSLVERSION}

.include <bsd.port.mk>
