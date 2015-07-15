# $OpenBSD: Makefile,v 1.11 2015/07/15 14:59:15 ajacoutot Exp $

COMMENT =	daemon to control digital model railroad systems

DISTNAME =	srcpd-2.1.3
CATEGORIES =	misc net
REVISION =	0

HOMEPAGE =	http://srcpd.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=srcpd/}

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MODULES +=		converters/libiconv
WANTLIB += 		c m pthread z xml2
LIB_DEPENDS +=		textproc/libxml

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/srcpd

.include <bsd.port.mk>
