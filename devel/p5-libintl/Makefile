# $OpenBSD: Makefile,v 1.17 2017/02/06 20:05:23 sthen Exp $

COMMENT=	internationalization library written in Perl

V=		1.26
REVISION=	0
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
CATEGORIES=	devel
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes

# Depends on perl ABI
WANTLIB += perl iconv intl

MODULES=	cpan

LIB_DEPENDS=	devel/gettext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gettext_xs/Makefile.PL

.include <bsd.port.mk>
