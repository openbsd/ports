# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:19 naddy Exp $

COMMENT =	create DateTime parser classes and objects

MODULES =	cpan 
PKG_ARCH =	*
DISTNAME =	DateTime-Format-Builder-0.81
EPOCH =		0
REVISION =	0
CATEGORIES =	devel

MAINTAINER = Andrew Fresh <afresh1@openbsd.org>

# artistic_2
PERMIT_PACKAGE_CDROM =	Yes

MODCPAN_EXAMPLES =	Yes

RUN_DEPENDS =	devel/p5-Class-Factory-Util \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-Params-Validate

TEST_DEPENDS =	devel/p5-DateTime-Format-HTTP \
		devel/p5-DateTime-Format-Mail

.include <bsd.port.mk>
