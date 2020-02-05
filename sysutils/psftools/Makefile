# $OpenBSD: Makefile,v 1.9 2020/02/05 20:58:51 fcambus Exp $

PORTROACH =	ignore:1

COMMENT =	conversion tools for .PSF fonts

DISTNAME =	psftools-1.0.13
SHARED_LIBS +=	psf	0.0	# 1.1
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://www.seasip.info/Unix/PSF/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c

MASTER_SITES =	https://www.seasip.info/Unix/PSF/

CONFIGURE_STYLE = gnu

USE_GMAKE =	Yes

.include <bsd.port.mk>
