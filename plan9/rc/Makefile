# $OpenBSD: Makefile,v 1.27 2019/07/12 20:48:54 sthen Exp $

COMMENT=	shell (clone of plan9 shell)

DISTNAME=	rc-1.7.4
REVISION=	1
CATEGORIES=	plan9 shells
MASTER_SITES=	http://static.tobold.org/rc/

HOMEPAGE=	http://tobold.org/article/rc

# zlib license
PERMIT_PACKAGE=	Yes

WANTLIB=		c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-history

FLAVORS=	readline editline
FLAVOR?=

TEST_TARGET= trip

.if ${FLAVOR} == "readline"
CONFIGURE_ARGS+= --with-edit=readline
WANTLIB+=		curses readline
.elif ${FLAVOR} == "editline"
CONFIGURE_ARGS+= --with-edit=edit
WANTLIB += curses edit
.endif

.include <bsd.port.mk>
