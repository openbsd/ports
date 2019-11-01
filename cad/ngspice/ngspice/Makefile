# $OpenBSD: Makefile,v 1.2 2019/11/01 02:17:35 bentley Exp $

COMMENT =		circuit simulator, based on Berkeley SPICE

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c m xcb

post-install:
	@rm -r ${PREFIX}/include/ngspice

.include <bsd.port.mk>
