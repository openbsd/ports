# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:33 espie Exp $

COMMENT=	collection of perl modules to be used with asterisk

DISTNAME=	asterisk-perl-1.03
PKGNAME=	p5-${DISTNAME:S/perl-//}
CATEGORIES=	telephony perl5
HOMEPAGE=	http://asterisk.gnuinter.net/

MODULES=	cpan
CPAN_AUTHOR=	JAMESGOL

# artistic
PERMIT_PACKAGE_CDROM=	yes

CONFIGURE_STYLE=	perl
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/p5-asterisk
USE_GROFF=		Yes

.include <bsd.port.mk>
