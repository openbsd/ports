# $OpenBSD: Makefile,v 1.6 2010/10/18 17:47:59 espie Exp $

COMMENT= 	create DateTime parser classes and objects

MODULES=	cpan 
DISTNAME=	DateTime-Format-Builder-0.7901
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Params-Validate \
		::devel/p5-Class-Factory-Util \
		::devel/p5-DateTime-Format-Strptime \
		::devel/p5-Task-Weaken
# intentionally no p5-DateTime-Format-IBeat, what's the use ?

REGRESS_DEPENDS=::devel/p5-DateTime-Format-HTTP \
		::devel/p5-DateTime-Format-Mail

CONFIGURE_STYLE=modbuild

MODCPAN_EXAMPLES=Yes

.include <bsd.port.mk>
