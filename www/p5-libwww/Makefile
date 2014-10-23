# $OpenBSD: Makefile,v 1.39 2014/10/23 19:49:45 nigel Exp $

COMMENT=	library for WWW access in Perl

MODULES=	cpan
DISTNAME=	libwww-perl-6.08
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-File-Listing>=6.0 \
		textproc/p5-Encode-Locale \
		net/p5-Net-HTTP>=6.07 \
		www/p5-HTML-Parser>=3.33 \
		www/p5-HTML-Tagset \
		www/p5-HTTP-Cookies>=6.0 \
		www/p5-HTTP-Daemon>=6.0 \
		www/p5-HTTP-Date>=6.0 \
		www/p5-HTTP-Negotiate>=6.0 \
		www/p5-HTTP-GHTTP \
		www/p5-LWP-MediaTypes>=6.0 \
		www/p5-URI>1.10 \
		www/p5-WWW-RobotRules>=6.0

BUILD_DEPENDS=	${RUN_DEPENDS}
CPAN_AUTHOR=	MSCHILLI


.include <bsd.port.mk>
