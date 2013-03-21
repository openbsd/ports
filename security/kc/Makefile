# $OpenBSD: Makefile,v 1.6 2013/03/21 09:48:45 jasper Exp $

COMMENT =	console based password storing application

DISTNAME =	kc-2.3.0
CATEGORIES =    security

HOMEPAGE =	http://code.google.com/p/keychain
MASTER_SITES =	http://keychain.googlecode.com/files/

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c crypto edit ncursesw xml2 pcre

LIB_DEPENDS =	textproc/libxml \
		devel/pcre

# only required for the pwsafe_to_kc.pl utility,
# and not for kc itself.
RUN_DEPENDS =	www/p5-HTML-Parser

MAKE_ENV +=	HAVE_PCRE=yes

TEST_TARGET =test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/kc
	${INSTALL} ${WRKBUILD}/pwsafe_to_kc.pl ${PREFIX}/share/kc/

.include <bsd.port.mk>
