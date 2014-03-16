# $OpenBSD: Makefile,v 1.11 2014/03/16 02:59:03 afresh1 Exp $

COMMENT =	create DateTime parser classes and objects

MODULES =	cpan 
DISTNAME =	DateTime-Format-Builder-0.81
EPOCH =		0
CATEGORIES =	devel

MAINTAINER = Andrew Fresh <andrew@cpan.org>

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
