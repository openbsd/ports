# $OpenBSD: Makefile,v 1.10 2014/07/11 07:34:23 espie Exp $

COMMENT =	console based password storing application

GH_ACCOUNT =	levaidaniel
GH_PROJECT =	kc
GH_TAGNAME =	2.3.2
GH_COMMIT =	49915a19a0eabf279400667cd14d254159dc3a4f
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES =	security

HOMEPAGE =	http://github.com/levaidaniel/${GH_PROJECT}

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c crypto edit ncursesw xml2 pcre

LIB_DEPENDS =	textproc/libxml \
		devel/pcre

MAKE_ENV +=	HAVE_PCRE=yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/kc
	${INSTALL} ${WRKBUILD}/pwsafe_to_kc.pl ${PREFIX}/share/kc/

.include <bsd.port.mk>
