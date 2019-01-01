# $OpenBSD: Makefile,v 1.2 2019/01/01 15:37:48 fcambus Exp $

COMMENT =	tool for resizing BDF format fonts

DISTNAME =	bdfresize-1.5

CATEGORIES =	sysutils

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c

MASTER_SITES =	https://www.distfiles.pl/

CONFIGURE_STYLE = gnu

post-configure:
	# Do not build embedded getopt
	@sed -i 's|"getopt.h"|<getopt.h>|' ${WRKSRC}/bdfresize.c
	@sed -i 's|charresize.o getopt.o|charresize.o|' ${WRKSRC}/Makefile

.include <bsd.port.mk>
