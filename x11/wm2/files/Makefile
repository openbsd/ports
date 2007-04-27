# $OpenBSD: Makefile,v 1.1.1.1 2007/04/27 18:31:12 matthieu Exp $

BINDIR=	${PREFIX}/bin
MANDIR=	${PREFIX}/man/cat

PROG=	wm2
SRCS=	Border.C Buttons.C Client.C Events.C Main.C Manager.C Rotated.C

CPPFLAGS+=	-I${X11BASE}/include
LDADD+=		-L${X11BASE}/lib -lXext -lX11 -lXau -lXdmcp

.include <bsd.prog.mk>
