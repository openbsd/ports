# $OpenBSD: Makefile,v 1.11 2015/09/18 13:28:39 ajacoutot Exp $

COMMENT=	internationalization library written in Perl

V=		1.24
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
CATEGORIES=	devel
MODULES=	cpan
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES +=	devel/gettext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gettext_xs/Makefile.PL

.include <bsd.port.mk>
