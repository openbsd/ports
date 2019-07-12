# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:56 sthen Exp $

COMMENT=		intelligent n-up printing

DISTNAME=		psdim-1.4
REVISION =		0
CATEGORIES=		print

HOMEPAGE=		http://www.mathstat.dal.ca/~selinger/psdim

MAINTAINER=		Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}/download/

RUN_DEPENDS=		print/ghostscript/gnu
BUILD_DEPENDS=		${RUN_DEPENDS}

WANTLIB=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-metric

SEPARATE_BUILD=		Yes

FLAVORS=		a4
FLAVOR?=

.if defined(FLAVOR) && ${FLAVOR} == "a4"
CONFIGURE_ARGS+=	--enable-a4
.endif

.include <bsd.port.mk>
