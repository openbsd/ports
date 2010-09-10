#	$OpenBSD: Makefile,v 1.2 2010/09/10 13:32:47 jasper Exp $

COMMENT=	get and set methods and simplify object initialization  

DISTNAME=	Hash-AutoHash-1.12
REVISION=	0
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
