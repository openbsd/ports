PKG_ARCH=	*

COMMENT=	tool to check the quality of a DNS zone

MODULES=	cpan
CPAN_AUTHOR=	ZNMSTR
V=		7.0.0
DISTNAME=	Zonemaster-Engine-v$V
PKGNAME=	p5-Zonemaster-engine-$V
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

USE_GMAKE=	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Clone \
		mail/p5-Email-Valid \
		devel/p5-File-ShareDir>=1.00 \
		devel/p5-File-Slurp \
		net/p5-IO-Socket-INET6>=2.69 \
		devel/p5-List-Compare \
		devel/p5-List-MoreUtils \
		devel/p5-libintl \
		devel/p5-Log-Any \
		mail/p5-Mail-SPF \
		devel/p5-Module-Find>=0.10 \
		net/p5-Net-DNS \
		net/p5-Net-IP-XS \
		devel/p5-Readonly \
		textproc/p5-Text-CSV \
		devel/p5-YAML-XS \
		net/p5-Zonemaster/ldns

TEST_DEPENDS=	devel/p5-Sub-Override \
		devel/p5-Test-Differences \
		devel/p5-Test-Exception \
		devel/p5-Test-Fatal \
		devel/p5-Test-NoWarnings

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
