# $OpenBSD: Makefile,v 1.4 2005/02/13 16:50:42 alek Exp $

COMMENT=		"converts .dvi files to plain text"

DISTNAME=		dvi2tty-5.3.1
CATEGORIES=     	print

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.mesa.nl/pub/dvi2tty/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

NO_REGRESS=		Yes

do-install:
.for prog in dvi2tty disdvi
	${INSTALL_PROGRAM} ${WRKBUILD}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${prog}.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
