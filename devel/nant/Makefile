# $OpenBSD: Makefile,v 1.15 2014/10/15 01:51:51 sthen Exp $

BROKEN-amd64=	hangs in most bulk builds
BROKEN-i386=	failed since mono update

COMMENT=	.NET build tool inspired by Ant

V=		0.92
DISTNAME=	nant-${V}-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	devel lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nant/}

HOMEPAGE=	http://nant.sourceforge.net/

MAINTAINER=	Ryan Boggs <rmboggs@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

MODULES=	lang/mono

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}
WRKDIST=	${WRKSRC}

TEST_DEPENDS=	lang/mono-basic

FAKE_FLAGS=	DESTDIR=${WRKINST} \
		prefix=${TRUEPREFIX}

do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${MAKE_FLAGS} run-test

.include <bsd.port.mk>
