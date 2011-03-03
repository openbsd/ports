# $OpenBSD: Makefile,v 1.6 2011/03/03 13:39:05 sthen Exp $

COMMENT=	collection of perl modules to be used with asterisk

DISTNAME=	asterisk-perl-1.01
PKGNAME=	p5-${DISTNAME:S/perl-//}
CATEGORIES=	telephony perl5
HOMEPAGE=	http://asterisk.gnuinter.net/

MODULES=	cpan
CPAN_AUTHOR=	JAMESGOL

# artistic
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

CONFIGURE_STYLE=	perl
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/p5-asterisk
USE_GROFF=		Yes

.include <bsd.port.mk>
