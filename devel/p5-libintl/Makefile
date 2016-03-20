# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:42 naddy Exp $

COMMENT=	internationalization library written in Perl

V=		1.24
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
REVISION=	0
CATEGORIES=	devel
MODULES=	cpan devel/gettext
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	perl

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gettext_xs/Makefile.PL

.include <bsd.port.mk>
