PKG_ARCH=	*

COMMENT=	tool to check the quality of a DNS zone

MODULES=	cpan
CPAN_AUTHOR=	ZNMSTR
V=		6.0.3
DISTNAME=	Zonemaster-CLI-v$V
PKGNAME=	zonemaster-$V
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

CONFIGURE_STYLE= modinst

USE_GMAKE=	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-MooseX-Getopt \
		devel/p5-namespace-autoclean \
		net/p5-Zonemaster/engine>=4.7.2 \
		textproc/p5-Text-Reflow

.include <bsd.port.mk>
