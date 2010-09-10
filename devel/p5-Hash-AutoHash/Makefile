#	$OpenBSD: Makefile,v 1.1.1.1 2010/09/10 07:38:29 jasper Exp $

COMMENT=	create get and set methods and simplify object initialization  

DISTNAME=	Hash-AutoHash-1.12
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-List-MoreUtils \
			::devel/p5-Tie-Hash-MultiValue \
			::devel/p5-Tie-ToObject
REGRESS_DEPENDS=	::devel/p5-Test-Deep

.include <bsd.port.mk>
