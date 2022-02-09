# $OpenBSD: Makefile,v 1.14 2022/02/09 08:41:43 sthen Exp $

PKG_ARCH=	*

COMMENT=	tool to check the quality of a DNS zone

MODULES=	cpan
CPAN_AUTHOR=	ZNMSTR
V=		4.4.0
DISTNAME=	Zonemaster-Engine-v$V
PKGNAME=	p5-Zonemaster-engine-$V
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

USE_GMAKE=	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-JSON>=2.53 \
		converters/p5-JSON-XS>=2.32 \
		devel/p5-Class-Accessor \
		devel/p5-Clone \
		devel/p5-File-ShareDir>=1.00 \
		devel/p5-File-Slurp \
		devel/p5-libintl \
		devel/p5-List-MoreUtils \
		devel/p5-Module-Find>=0.10 \
		devel/p5-Moose>=2.0401 \
		devel/p5-MooseX-Singleton \
		devel/p5-Readonly \
		mail/p5-Email-Valid \
		net/p5-IO-Socket-INET6>=2.69 \
		net/p5-Net-IP \
		net/p5-Zonemaster/ldns \
		textproc/p5-Text-CSV

TEST_DEPENDS=	devel/p5-Test-Differences \
		devel/p5-Test-Exception \
		devel/p5-Test-Fatal \
		devel/p5-Test-NoWarnings

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
