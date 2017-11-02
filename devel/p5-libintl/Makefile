# $OpenBSD: Makefile,v 1.19 2017/11/02 17:54:16 ajacoutot Exp $

COMMENT=	internationalization library written in Perl

V=		1.27
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
CATEGORIES=	devel
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl perl

MODULES=	cpan

LIB_DEPENDS=	devel/gettext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gettext_xs/Makefile.PL

.include <bsd.port.mk>
