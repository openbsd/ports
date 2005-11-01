# $OpenBSD: Makefile,v 1.1.1.1 2005/11/01 00:19:17 alek Exp $

COMMENT=		"intelligent n-up printing"

DISTNAME=		psdim-1.4
CATEGORIES=		print

HOMEPAGE=		http://www.mathstat.dal.ca/~selinger/psdim

MAINTAINER=		Steven Mestdagh <steven.mestdagh@esat.kuleuven.be>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/

BUILD_DEPENDS=		:ghostscript-*:print/ghostscript/gnu
RUN_DEPENDS=		${BUILD_DEPENDS}

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
