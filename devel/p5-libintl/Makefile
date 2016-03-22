# $OpenBSD: Makefile,v 1.14 2016/03/22 18:18:04 naddy Exp $

COMMENT=	internationalization library written in Perl

V=		1.24
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
REVISION=	1
CATEGORIES=	devel
MODULES=	cpan devel/gettext
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	perl

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gettext_xs/Makefile.PL

.include <bsd.port.mk>
