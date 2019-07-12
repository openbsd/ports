# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:39 sthen Exp $

COMMENT =	tool for resizing BDF format fonts

DISTNAME =	bdfresize-1.5

CATEGORIES =	sysutils

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c

MASTER_SITES =	https://www.distfiles.pl/

CONFIGURE_STYLE = gnu

post-configure:
	# Do not build embedded getopt
	@sed -i 's|"getopt.h"|<getopt.h>|' ${WRKSRC}/bdfresize.c
	@sed -i 's|charresize.o getopt.o|charresize.o|' ${WRKSRC}/Makefile

.include <bsd.port.mk>
