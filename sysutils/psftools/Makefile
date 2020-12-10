# $OpenBSD: Makefile,v 1.10 2020/12/10 08:29:43 fcambus Exp $

PORTROACH =	ignore:1

COMMENT =	conversion tools for .PSF fonts

DISTNAME =	psftools-1.0.14
SHARED_LIBS +=	psf	0.0	# 1.1

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
