# $OpenBSD: Makefile,v 1.80 2004/02/08 11:17:11 jakob Exp $

VERSION=	2.0.18-20040205

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

TLSVERSION=	0.8.18
TLSPFIXVERSION=	2.0.18-20040122
TLSSSLVERSION=	0.9.7c


FLAVORS+=	pgsql
FLAVOR?=

.if ${FLAVOR:L:Mpgsql}
LIB_DEPENDS+=	pq.3:postgresql-clients-7.*:databases/postgresql
MAKE_CCARGS+=	-I${LOCALBASE}/include/postgresql -DHAS_PGSQL
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpq
.endif

.include <bsd.port.mk>
