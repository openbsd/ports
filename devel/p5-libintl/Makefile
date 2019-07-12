# $OpenBSD: Makefile,v 1.22 2019/07/12 20:45:15 sthen Exp $

COMMENT=	internationalization library written in Perl

V=		1.29
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
CATEGORIES=	devel
CPAN_AUTHOR=	GUIDO
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl perl

MODULES=	cpan

LIB_DEPENDS=	devel/gettext,-runtime

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gettext_xs/Makefile.PL

.include <bsd.port.mk>
