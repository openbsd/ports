# $OpenBSD: Makefile,v 1.1.1.1 2010/04/05 01:13:44 robert Exp $

COMMENT=	A .NET build tool inspired by Ant

V=		0.86-beta1
DISTNAME=	nant-${V}-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	devel lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nant/}

HOMEPAGE=	http://nant.sourceforge.net/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes

MODULES=	lang/mono
BUILD_DEPENDS=	${RUN_DEPENDS}

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}
WRKDIST=	${WRKSRC}

MAKE_FLAGS=	prefix=${DESTDIR}${PREFIX}

post-patch:
	@find ${WRKSRC}/src ${WRKSRC}/tests -name '*.build' \
		-exec perl -pi -e \
		's|warnaserror="true"|warnaserror="false"|g;' {} \;

.include <bsd.port.mk>
