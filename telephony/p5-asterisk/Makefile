# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:55 sthen Exp $

COMMENT=	collection of perl modules to be used with asterisk

DISTNAME=	asterisk-perl-1.03
PKGNAME=	p5-${DISTNAME:S/perl-//}
CATEGORIES=	telephony perl5
HOMEPAGE=	http://asterisk.gnuinter.net/

MODULES=	cpan
PKG_ARCH=	*
CPAN_AUTHOR=	JAMESGOL

# artistic
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	perl
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/p5-asterisk

.include <bsd.port.mk>
