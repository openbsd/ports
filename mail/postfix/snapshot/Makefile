# $OpenBSD: Makefile,v 1.81 2004/02/08 12:23:18 jakob Exp $

VERSION=	2.0.18-20040205

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

TLSVERSION=	0.8.18
TLSPFIXVERSION=	2.0.18-20040122
TLSSSLVERSION=	0.9.7c

IPV6VERSION=	1.21a
IPV6PFIXVERSION=2.0.18-20040205

FLAVORS+=	pgsql
FLAVOR?=

.if ${FLAVOR:L:Mpgsql}
LIB_DEPENDS+=	pq.3:postgresql-clients-7.*:databases/postgresql
MAKE_CCARGS+=	-I${LOCALBASE}/include/postgresql -DHAS_PGSQL
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpq
.endif

.include <bsd.port.mk>
