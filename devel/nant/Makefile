# $OpenBSD: Makefile,v 1.2 2010/04/05 06:30:43 ajacoutot Exp $

COMMENT=	.NET build tool inspired by Ant

V=		0.86-beta1
DISTNAME=	nant-${V}-src
PKGNAME=	${DISTNAME:S/-src//}p0
CATEGORIES=	devel lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nant/}

HOMEPAGE=	http://nant.sourceforge.net/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes
NO_REGRESS=	Yes

MODULES=	lang/mono

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/mono

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}
WRKDIST=	${WRKSRC}

FAKE_FLAGS=	prefix=${WRKINST}${TRUEPREFIX}

post-patch:
	@find ${WRKSRC}/src ${WRKSRC}/tests -name '*.build' \
		-exec perl -pi -e \
		's|warnaserror="true"|warnaserror="false"|g;' {} \;

.include <bsd.port.mk>
