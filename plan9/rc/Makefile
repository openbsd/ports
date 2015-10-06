# $OpenBSD: Makefile,v 1.23 2015/10/06 13:32:56 gsoares Exp $

COMMENT=	shell (clone of plan9 shell)

DISTNAME=	rc-1.7.4
CATEGORIES=	plan9 shells
MASTER_SITES=	http://static.tobold.org/rc/
MASTER_SITES0=	http://static.tobold.org/rc/
SUPDISTFILES=	editline-1.5.tar.gz:0

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
DISTFILES=	${DISTNAME}.tar.gz editline-1.5.tar.gz:0
EDITLINE=	${WRKSRC}/../editline
CONFIGURE_ARGS+= --with-edit=edit
CONFIGURE_ENV=	LIBS+="-L${EDITLINE}"
WANTLIB += edit termcap
.endif

.if ${FLAVOR} == "editline"
pre-configure:
	@echo "===>  Compiling editline"
	@cd ${EDITLINE} && ${MAKE_PROGRAM}
.endif

.include <bsd.port.mk>
