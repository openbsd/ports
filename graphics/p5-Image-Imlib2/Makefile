# $OpenBSD: Makefile,v 1.8 2006/08/03 12:53:18 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Perl interface to the Imlib2 image library"

DISTNAME=	Image-Imlib2-1.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5

MAINTAINER=	Michael Knudsen <mk@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext freetype m

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/}

LIB_DEPENDS=	Imlib2.>=1::graphics/imlib2

REGRESS_DEPENDS=::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE=perl modbuild

.include <bsd.port.mk>
