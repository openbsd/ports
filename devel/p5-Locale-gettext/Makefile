# $OpenBSD: Makefile,v 1.20 2015/11/18 13:08:50 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to gettext() internationalization function

MODULES=	cpan
DISTNAME=	gettext-1.07
PKGNAME=	p5-Locale-${DISTNAME}
CPAN_AUTHOR=	PVANDRY
CATEGORIES=	converters devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES+=	devel/gettext

DIST_SUBDIR=	p5-Locale-${DISTNAME}
WRKDIST=	${WRKDIR}/Locale-${DISTNAME}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
