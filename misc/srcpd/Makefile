# $OpenBSD: Makefile,v 1.9 2014/11/16 11:39:44 sebastia Exp $

COMMENT =	daemon to control digital model railroad systems

DISTNAME =	srcpd-2.1.2
CATEGORIES =	misc net

HOMEPAGE =	http://srcpd.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=srcpd/}

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MODULES +=		converters/libiconv
WANTLIB += 		c m pthread z xml2
LIB_DEPENDS +=		textproc/libxml

AUTOCONF_VERSION =	2.64
CONFIGURE_STYLE =	autoconf

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/srcpd

.include <bsd.port.mk>
