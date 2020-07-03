# $OpenBSD: Makefile,v 1.26 2020/07/03 21:44:58 sthen Exp $

COMMENT=	interface to gettext() internationalization function

MODULES=	cpan
DISTNAME=	gettext-1.07
PKGNAME=	p5-Locale-${DISTNAME}
CPAN_AUTHOR=	PVANDRY
CATEGORIES=	converters devel
REVISION=	3

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c intl perl

LIB_DEPENDS=	devel/gettext,-runtime

DIST_SUBDIR=	p5-Locale-${DISTNAME}
WRKDIST=	${WRKDIR}/Locale-${DISTNAME}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
