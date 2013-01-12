# $OpenBSD: Makefile,v 1.42 2013/01/12 00:38:22 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl module for using OpenSSL

DISTNAME =		Net-SSLeay-1.52

CATEGORIES =		security

HOMEPAGE =		http://alioth.debian.org/projects/net-ssleay

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# same terms as OpenSSL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto ssl z

MODULES =		cpan
REGRESS_DEPENDS =	devel/p5-Test-Exception \
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
