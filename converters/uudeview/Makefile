# $OpenBSD: Makefile,v 1.2 2019/07/12 20:43:52 sthen Exp $

COMMENT =	uu/xx/Base64/BinHex/yEnc decoder and encoder

DISTNAME =	uudeview-0.5.20

CATEGORIES =	converters

HOMEPAGE =	http://www.fpx.de/fp/Software/UUDeview/

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# GPLv2+, with BSD parts
PERMIT_PACKAGE =	Yes

WANTLIB =	c m

MASTER_SITES =	${HOMEPAGE}download/

CONFIGURE_STYLE =	autoconf dest
AUTOCONF_VERSION =	2.13
CONFIGURE_ARGS =	--disable-tcl \
			--enable-inews=inew

NO_TEST =	Yes

.include <bsd.port.mk>
