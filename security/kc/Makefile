# $OpenBSD: Makefile,v 1.3 2012/10/15 15:18:33 sthen Exp $

COMMENT =	console based password storing application

DISTNAME =	kc-2.1.6
CATEGORIES =    security

HOMEPAGE =	http://code.google.com/p/keychain
MASTER_SITES =	http://keychain.googlecode.com/files/

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c ssl crypto edit ncursesw xml2 pcre

LIB_DEPENDS =	textproc/libxml \
		devel/pcre

MAKE_ENV +=	HAVE_PCRE=yes CC="${CC}"

.include <bsd.port.mk>
