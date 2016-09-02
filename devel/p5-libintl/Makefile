# $OpenBSD: Makefile,v 1.15 2016/09/02 22:50:33 ajacoutot Exp $

COMMENT=	internationalization library written in Perl

V=		1.26
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
CATEGORIES=	devel
MODULES=	cpan devel/gettext
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	perl

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gettext_xs/Makefile.PL

.include <bsd.port.mk>
