# $OpenBSD: Makefile,v 1.7 2012/07/09 14:54:25 naddy Exp $

COMMENT =	daemon to control digital model railroad systems

DISTNAME =	srcpd-2.1.1
CATEGORIES =	misc net
REVISION =	5

HOMEPAGE =	http://srcpd.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=srcpd/}

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES +=		converters/libiconv
WANTLIB += 		c m pthread z xml2
LIB_DEPENDS +=		textproc/libxml

AUTOCONF_VERSION =	2.64
CONFIGURE_STYLE =	autoconf

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/srcpd

.include <bsd.port.mk>
