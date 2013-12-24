# $OpenBSD: Makefile,v 1.8 2013/12/24 12:56:19 jca Exp $

COMMENT =	console based password storing application

GH_VER =	2.3.2
PROJECT =	kc
DISTNAME =	${PROJECT}-${GH_VER}
CATEGORIES =	security

HOMEPAGE =	http://github.com/levaidaniel/${PROJECT}
MASTER_SITES =	https://github.com/levaidaniel/${PROJECT}/archive/

DISTFILES =	${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}

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
