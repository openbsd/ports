# $OpenBSD: Makefile,v 1.11 2021/01/13 10:47:49 fcambus Exp $

PORTROACH =	ignore:1

COMMENT =	conversion tools for .PSF fonts

DISTNAME =	psftools-1.1.0
SHARED_LIBS +=	psf	0.1	# 1.2

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
