# $OpenBSD: Makefile,v 1.10 2019/07/12 20:48:54 sthen Exp $

COMMENT=		converts .dvi files to plain text

DISTNAME=		dvi2tty-5.3.1
REVISION=		0
CATEGORIES=     	print

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.mesa.nl/pub/dvi2tty/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST=		Yes

do-install:
.for prog in dvi2tty disdvi
	${INSTALL_PROGRAM} ${WRKBUILD}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${prog}.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
