# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:56 sthen Exp $

COMMENT=	PDF manipulation library

DISTNAME=	Poppler-1.0101

CATEGORIES=	print

# Perl
PERMIT_PACKAGE=	Yes

# dynamically opened via Glib::Object::Introspection
WANTLIB += perl poppler-glib

HOMEPAGE=	https://github.com/c9s/perl-poppler

MODULES=	cpan
CPAN_AUTHOR=	VOLKENING
CONFIGURE_STYLE= modbuild

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-ExtUtils-PkgConfig
RUN_DEPENDS=	devel/p5-Glib-Object-Introspection \
		graphics/p5-Cairo \
		www/p5-URI

LIB_DEPENDS=	print/poppler

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/Poppler.pm

.include <bsd.port.mk>
