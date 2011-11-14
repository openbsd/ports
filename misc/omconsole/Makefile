# $OpenBSD: Makefile,v 1.7 2011/11/14 17:58:18 ajacoutot Exp $

COMMENT =	OpenMoko serial console tool

DISTNAME =	omconsole-1.1
REVISION =	0

CATEGORIES =	misc

MAINTAINER =	Matthieu Herrb <matthieu@herrb.eu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB += c ftdi pthread usb

MASTER_SITES =		ftp://ftp.laas.fr/pub/ii/matthieu/

LIB_DEPENDS =		devel/libftdi

MAKE_ENV=		LOCAL_BASE=${LOCALBASE} LDADD=-pthread
MAKE_FLAGS=		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

NO_REGRESS =		yes

.include <bsd.port.mk>
