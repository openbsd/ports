# $OpenBSD: Makefile,v 1.1.1.1 2002/11/03 15:47:06 naddy Exp $

COMMENT=		"converts .dvi files to plain text"

DISTNAME=		dvi2tty-5.3
CATEGORIES=     	print

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM= "no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES=		http://www.mesa.nl/pub/dvi2tty/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

NO_REGRESS=		Yes

do-install:
.for prog in dvi2tty disdvi
	${INSTALL_PROGRAM} ${WRKBUILD}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${prog}.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
