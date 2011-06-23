# $OpenBSD: Makefile,v 1.2 2011/06/23 22:50:30 naddy Exp $

BINDIR=	${PREFIX}/bin
MANDIR=	${PREFIX}/man/man

PROG=	wm2
SRCS=	Border.C Buttons.C Client.C Events.C Main.C Manager.C Rotated.C

CPPFLAGS+=	-I${X11BASE}/include
LDADD+=		-L${X11BASE}/lib -lXext -lX11 -lXau -lXdmcp

.include <bsd.prog.mk>
