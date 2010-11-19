# $OpenBSD: Makefile,v 1.4 2010/11/19 22:31:36 espie Exp $

COMMENT =		PoCo::IRC Plugin that provides RSS Headline retrieval

DISTNAME =		POE-Component-IRC-Plugin-RSS-Headlines-1.08
CATEGORIES =		net www

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
USE_GROFF =	Yes

RUN_DEPENDS =	net/p5-POE-Component-IRC \
		net/p5-POE-Component-Client-HTTP>=0.73 \
		textproc/p5-XML-RSS>1.1

MAKE_ENV+=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
