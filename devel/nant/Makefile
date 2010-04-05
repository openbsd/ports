# $OpenBSD: Makefile,v 1.4 2010/04/05 10:44:43 robert Exp $

COMMENT=	.NET build tool inspired by Ant

V=		0.86-beta1
DISTNAME=	nant-${V}-src
PKGNAME=	${DISTNAME:S/-src//}p2
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

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}
WRKDIST=	${WRKSRC}

FAKE_FLAGS=	prefix=${WRKINST}${TRUEPREFIX} \
		vprefix=${TRUEPREFIX}/share/NAnt

post-patch:
	@find ${WRKSRC}/src ${WRKSRC}/tests -name '*.build' \
		-exec perl -pi -e \
		's|warnaserror="true"|warnaserror="false"|g;' {} \;

.include <bsd.port.mk>
