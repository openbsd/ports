# $OpenBSD: Makefile,v 1.1.1.1 2006/11/12 18:00:56 espie Exp $

COMMENT= 	"create DateTime parser classes and objects"

MODULES=	cpan 

DISTNAME=	DateTime-Format-Builder-0.7807
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Params-Validate \
		::devel/p5-Class-Factory-Util \
		::devel/p5-DateTime-Format-Strptime

# intentionally no p5-DateTime-Format-IBeat, what's the use ?

REGRESS_DEPENDS=::devel/p5-DateTime-Format-HTTP \
		::devel/p5-DateTime-Format-Mail

CONFIGURE_STYLE=modbuild


.include <bsd.port.mk>
