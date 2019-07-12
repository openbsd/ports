# $OpenBSD: Makefile,v 1.46 2019/07/12 20:50:59 sthen Exp $

COMMENT=	library for WWW access in Perl

DISTNAME=	libwww-perl-6.27
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
CPAN_AUTHOR=	OALDERS

RUN_DEPENDS=	devel/p5-File-Listing>=6.0 \
		devel/p5-Try-Tiny \
		textproc/p5-Encode-Locale \
		net/p5-Net-HTTP>=6.07 \
		www/p5-HTML-Parser>=3.33 \
		www/p5-HTML-Tagset \
		www/p5-HTTP-Cookies>=6.0 \
		www/p5-HTTP-Daemon>=6.0 \
		www/p5-HTTP-Date>=6.0 \
		www/p5-HTTP-Negotiate>=6.0 \
		www/p5-LWP-MediaTypes>=6.0 \
		www/p5-URI>1.10 \
		www/p5-WWW-RobotRules>=6.0

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-RequiresInternet

PKG_ARCH=	*

.include <bsd.port.mk>
