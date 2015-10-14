# $OpenBSD: Makefile,v 1.24 2015/10/14 02:58:29 gsoares Exp $

COMMENT=	shell (clone of plan9 shell)

DISTNAME=	rc-1.7.4
CATEGORIES=	plan9 shells
MASTER_SITES=	http://static.tobold.org/rc/

HOMEPAGE=	http://tobold.org/article/rc

MAINTAINER=	Michael Reed <m.reed@mykolab.com>

# zlib license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-history

FLAVORS=	readline editline
FLAVOR?=

TEST_TARGET= trip

.if ${FLAVOR} == "readline"
CONFIGURE_ARGS+= --with-edit=readline
WANTLIB+=		readline termcap
.elif ${FLAVOR} == "editline"
CONFIGURE_ARGS+= --with-edit=edit
WANTLIB += edit termcap
.endif

.include <bsd.port.mk>
