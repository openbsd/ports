# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT=        validate user input through a chain of constraints

MODULES=	cpan
DISTNAME=	FormValidator-Simple-0.23
REVISION=	0
CATEGORIES=     devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Class-Data-Accessor>=0.03 \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Class-Inspector \
		devel/p5-Date-Calc \
		devel/p5-DateTime-Format-Strptime \
		mail/p5-Email-Valid \
		mail/p5-Email-Valid-Loose \
		devel/p5-List-MoreUtils \
		mail/p5-Mail-Tools \
		devel/p5-Tie-IxHash \
		devel/p5-Universal-require \
		devel/p5-YAML
	
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
