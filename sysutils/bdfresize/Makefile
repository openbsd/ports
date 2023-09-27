COMMENT =	tool for resizing BDF format fonts

DISTNAME =	bdfresize-1.5
REVISION =	1

CATEGORIES =	sysutils

HOMEPAGE =	http://openlab.jp/efont/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c

SITES =		http://openlab.ring.gr.jp/efont/dist/tools/bdfresize/

CONFIGURE_STYLE = gnu

post-configure:
	# Do not build embedded getopt
	@sed -i 's|"getopt.h"|<getopt.h>|' ${WRKSRC}/bdfresize.c
	@sed -i 's|charresize.o getopt.o|charresize.o|' ${WRKSRC}/Makefile

.include <bsd.port.mk>
