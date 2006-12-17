# $OpenBSD: Makefile,v 1.3 2006/12/17 20:13:33 kili Exp $

COMMENT=		"intelligent n-up printing"

DISTNAME=		psdim-1.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		print

HOMEPAGE=		http://www.mathstat.dal.ca/~selinger/psdim

MAINTAINER=		Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/

RUN_DEPENDS=		:ghostscript-*:print/ghostscript/gnu
BUILD_DEPENDS=		${RUN_DEPENDS}

WANTLIB=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-metric

SEPARATE_BUILD=		concurrent

FLAVORS=		a4
FLAVOR?=

.if defined(FLAVOR) && ${FLAVOR:L} == "a4"
CONFIGURE_ARGS+=	--enable-a4
.endif

.include <bsd.port.mk>
