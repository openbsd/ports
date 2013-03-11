# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:15 espie Exp $

COMMENT= 	create DateTime parser classes and objects

MODULES=	cpan 
DISTNAME=	DateTime-Format-Builder-0.80
CATEGORIES=	devel

EPOCH =		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Params-Validate \
		devel/p5-Class-Factory-Util \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-Task-Weaken
# intentionally no p5-DateTime-Format-IBeat, what's the use ?

TEST_DEPENDS=devel/p5-DateTime-Format-HTTP \
		devel/p5-DateTime-Format-Mail

CONFIGURE_STYLE=modbuild

MODCPAN_EXAMPLES=Yes

.include <bsd.port.mk>
