# $OpenBSD: Makefile,v 1.2 2010/04/06 21:46:56 matthieu Exp $

COMMENT =	OpenMoko serial console tool

DISTNAME =	omconsole-1.1

CATEGORIES =	misc

MAINTAINER =	Matthieu Herrb <matthieu@herrb.eu>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		ftdi usb c

MASTER_SITES =		ftp://ftp.laas.fr/pub/ii/matthieu/

LIB_DEPENDS =		:libftdi-*:devel/libftdi

NO_REGRESS =		yes

.include <bsd.port.mk>
