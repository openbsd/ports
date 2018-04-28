# $OpenBSD: Makefile,v 1.20 2018/04/28 14:00:04 ajacoutot Exp $

COMMENT=	internationalization library written in Perl

V=		1.29
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
