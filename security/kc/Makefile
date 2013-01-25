# $OpenBSD: Makefile,v 1.4 2013/01/25 11:09:20 jasper Exp $

COMMENT =	console based password storing application

DISTNAME =	kc-2.2.1
CATEGORIES =    security

HOMEPAGE =	http://code.google.com/p/keychain
MASTER_SITES =	http://keychain.googlecode.com/files/

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c crypto edit ncursesw xml2 pcre

LIB_DEPENDS =	textproc/libxml \
		devel/pcre

# only required for the pwsafe_convert.pl utility,
# and not for kc itself.
RUN_DEPENDS =	www/p5-HTML-Parser

MAKE_ENV +=	HAVE_PCRE=yes

REGRESS_TARGET =test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/kc
	${INSTALL} ${WRKBUILD}/pwsafe_convert.pl ${PREFIX}/share/kc/

.include <bsd.port.mk>
