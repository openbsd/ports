# $OpenBSD: Makefile,v 1.15 2018/04/20 10:23:07 sthen Exp $

COMMENT =	console based password storing application

V =		2.4.2
DISTNAME =	kc-$V
EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	https://github.com/levaidaniel/kc/releases/download/${V}/

CATEGORIES =	security

HOMEPAGE =	http://github.com/levaidaniel/kc/

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c crypto curses edit pcre scrypt util xml2

LIB_DEPENDS =	textproc/libxml \
		devel/pcre \
		security/libscrypt

MAKE_ENV +=	HAVE_PCRE=yes OS_OPENBSD=yes HAVE_LIBSCRYPT=yes


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/kc
	${INSTALL} ${WRKBUILD}/pwsafe_to_kc.pl ${PREFIX}/share/kc/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kc
	${INSTALL} ${WRKBUILD}/Changelog ${PREFIX}/share/doc/kc/

.include <bsd.port.mk>
