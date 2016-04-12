# $OpenBSD: Makefile,v 1.22 2016/04/12 15:19:40 naddy Exp $

COMMENT=	interface to gettext() internationalization function

MODULES=	cpan
DISTNAME=	gettext-1.07
PKGNAME=	p5-Locale-${DISTNAME}
CPAN_AUTHOR=	PVANDRY
CATEGORIES=	converters devel
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	intl perl

LIB_DEPENDS=	devel/gettext

DIST_SUBDIR=	p5-Locale-${DISTNAME}
WRKDIST=	${WRKDIR}/Locale-${DISTNAME}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
