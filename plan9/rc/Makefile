# $OpenBSD: Makefile,v 1.25 2016/04/05 22:54:46 jca Exp $

COMMENT=	shell (clone of plan9 shell)

DISTNAME=	rc-1.7.4
REVISION=	0
CATEGORIES=	plan9 shells
MASTER_SITES=	http://static.tobold.org/rc/

HOMEPAGE=	http://tobold.org/article/rc

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
