# $OpenBSD: Makefile,v 1.2 2015/05/29 05:14:47 yasuoka Exp $

COMMENT =		search backend for Mew with Hyper Estrairer

V =			0.9.19
GH_ACCOUNT =		yasuoka
GH_PROJECT =		mailest
GH_TAGNAME =		mailest-${V}
DISTNAME =		${GH_PROJECT}-${V}
REVISION=		1

CATEGORIES =		mail

HOMEPAGE =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}

MAINTAINER =		YASUOKA Masahiko <yasuoka@yasuoka.net>

# BSD and partially LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c event pthread estraier qdbm

MODULES =		converters/libiconv
LIB_DEPENDS =		databases/qdbm \
			textproc/hyperestraier
RUN_DEPENDS =		mail/mew

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mailest
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mailest
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/mailest
	${INSTALL_DATA} ${WRKSRC}/mailestd.conf \
	    ${PREFIX}/share/examples/mailest
	${INSTALL_DATA} ${FILESDIR}/dot.emacs \
	    ${PREFIX}/share/examples/mailest

.include <bsd.port.mk>
