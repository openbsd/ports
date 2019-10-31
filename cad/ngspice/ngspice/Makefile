# $OpenBSD: Makefile,v 1.1.1.1 2019/10/31 06:01:00 bentley Exp $

COMMENT =		circuit simulator, based on Berkeley SPICE

REVISION =		0

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c m xcb

post-install:
	@rm -r ${PREFIX}/include/ngspice

.include <bsd.port.mk>
