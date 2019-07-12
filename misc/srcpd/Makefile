# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:54 sthen Exp $

COMMENT =	daemon to control digital model railroad systems

DISTNAME =	srcpd-2.1.3
CATEGORIES =	misc net
REVISION =	2

HOMEPAGE =	http://srcpd.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=srcpd/}

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB += 		c iconv m pthread z lzma xml2
LIB_DEPENDS +=		converters/libiconv \
			textproc/libxml

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/srcpd

.include <bsd.port.mk>
