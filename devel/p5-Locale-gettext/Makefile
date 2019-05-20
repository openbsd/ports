# $OpenBSD: Makefile,v 1.24 2019/05/20 22:15:07 naddy Exp $

COMMENT=	interface to gettext() internationalization function

MODULES=	cpan
DISTNAME=	gettext-1.07
PKGNAME=	p5-Locale-${DISTNAME}
CPAN_AUTHOR=	PVANDRY
CATEGORIES=	converters devel
REVISION=	2

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c intl perl

LIB_DEPENDS=	devel/gettext,-runtime

DIST_SUBDIR=	p5-Locale-${DISTNAME}
WRKDIST=	${WRKDIR}/Locale-${DISTNAME}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
