# $OpenBSD: Makefile,v 1.16 2016/09/02 22:53:17 ajacoutot Exp $

COMMENT=	internationalization library written in Perl

V=		1.26
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
CATEGORIES=	devel
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += iconv intl

MODULES=	cpan

LIB_DEPENDS=	devel/gettext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gettext_xs/Makefile.PL

.include <bsd.port.mk>
