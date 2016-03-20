# $OpenBSD: Makefile,v 1.21 2016/03/20 19:56:26 naddy Exp $

COMMENT=	interface to gettext() internationalization function

MODULES=	cpan
DISTNAME=	gettext-1.07
PKGNAME=	p5-Locale-${DISTNAME}
CPAN_AUTHOR=	PVANDRY
CATEGORIES=	converters devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	perl

MODULES+=	devel/gettext

DIST_SUBDIR=	p5-Locale-${DISTNAME}
WRKDIST=	${WRKDIR}/Locale-${DISTNAME}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
