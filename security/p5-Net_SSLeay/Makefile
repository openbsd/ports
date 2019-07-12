# $OpenBSD: Makefile,v 1.74 2019/07/12 20:49:08 sthen Exp $

COMMENT =	perl module for using OpenSSL

DISTNAME =	Net-SSLeay-1.88

CATEGORIES =	security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl z

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Warn \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

MODCPAN_EXAMPLES =	Yes
SRCDIR = 		${WRKSRC}/${MODCPAN_EXAMPLES_DIST}

post-install:
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA} ${SRCDIR}/*.conf ${SRCDIR}/*.pem ${MODCPAN_EXAMPLES_DIR}

.include <bsd.port.mk>
