# $OpenBSD: Makefile,v 1.8 2013/03/11 11:23:57 espie Exp $

COMMENT =	OpenMoko serial console tool

DISTNAME =	omconsole-1.1
REVISION =	0

CATEGORIES =	misc

MAINTAINER =	Matthieu Herrb <matthieu@herrb.eu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c ftdi pthread usb

MASTER_SITES =		ftp://ftp.laas.fr/pub/ii/matthieu/

LIB_DEPENDS =		devel/libftdi

MAKE_ENV=		LOCAL_BASE=${LOCALBASE} LDADD=-pthread
MAKE_FLAGS=		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

NO_TEST =		yes

.include <bsd.port.mk>
