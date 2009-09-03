# $OpenBSD: Makefile,v 1.1.1.1 2009/09/03 18:51:57 jasper Exp $

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

RUN_DEPENDS =	::net/p5-POE-Component-IRC \
		:p5-POE-Component-Client-HTTP->=0.73:net/p5-POE-Component-Client-HTTP \
		:p5-XML-RSS->1.1:textproc/p5-XML-RSS

MAKE_ENV+=	TEST_POD=Yes

EG_DIR= 	${PREFIX}/share/examples/p5-POE-Component-IRC-Plugin-RSS-Headlines

post-install:
	${INSTALL_DATA_DIR} ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EG_DIR}

.include <bsd.port.mk>
