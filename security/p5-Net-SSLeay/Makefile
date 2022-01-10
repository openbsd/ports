# $OpenBSD: Makefile,v 1.6 2022/01/10 21:46:20 tb Exp $

COMMENT =	perl module for using OpenSSL

DISTNAME =	Net-SSLeay-1.90
REVISION =	1

CATEGORIES =	security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl z

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Warn \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Pod>=1.41 \
			devel/p5-Test-Pod-Coverage>=1.00

MODCPAN_EXAMPLES =	Yes
SRCDIR = 		${WRKSRC}/${MODCPAN_EXAMPLES_DIST}

post-install:
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA} ${SRCDIR}/*.conf ${SRCDIR}/*.pem ${MODCPAN_EXAMPLES_DIR}

.include <bsd.port.mk>
