# $OpenBSD: Makefile,v 1.12 2012/06/12 17:30:48 jasper Exp $

COMMENT=	.NET build tool inspired by Ant

V=		0.92
DISTNAME=	nant-${V}-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	devel lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nant/}

HOMEPAGE=	http://nant.sourceforge.net/

MAINTAINER=	Ryan Boggs <rmboggs@gmail.com>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes

MODULES=	lang/mono

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}
WRKDIST=	${WRKSRC}

REGRESS_DEPENDS=	lang/mono-basic

FAKE_FLAGS=	DESTDIR=${WRKINST} \
		prefix=${TRUEPREFIX}

do-regress:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${MAKE_FLAGS} run-test

.include <bsd.port.mk>
