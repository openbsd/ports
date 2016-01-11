# $OpenBSD: Makefile,v 1.1.1.1 2016/01/11 10:22:48 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	PDF manipulation library

DISTNAME=	Poppler-1.01

CATEGORIES=	print

# Perl
PERMIT_PACKAGE_CDROM=	Yes

# dynamically opened via Glib::Object::Introspection
WANTLIB += poppler-glib

HOMEPAGE=	https://github.com/c9s/perl-poppler

MODULES=	cpan
CPAN_AUTHOR=	VOLKENING
CONFIGURE_STYLE= modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Glib-Object-Introspection \
		graphics/p5-Cairo \
		www/p5-URI

LIB_DEPENDS=	print/poppler

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/Poppler.pm

.include <bsd.port.mk>
