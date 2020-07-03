# $OpenBSD: Makefile,v 1.11 2020/07/03 21:46:06 sthen Exp $

COMMENT= 	creating and updating Bugzilla bugs

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	WWW-Bugzilla-1.5
CATEGORIES=	www
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-MethodMaker>=1.08 \
		devel/p5-Params-Validate>0.88 \
		security/p5-Crypt-SSLeay>0.57 \
		www/p5-WWW-Mechanize>=1.3

BUILD_DEPENDS = ${RUN_DEPENDS}

TEST_IS_INTERACTIVE=makes network connections to bugzilla servers

pre-configure:
	mkdir -p ${WRKSRC}/lib
	cp -rp ${WRKSRC}/WWW ${WRKSRC}/lib

.include <bsd.port.mk>
