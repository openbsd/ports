# $OpenBSD: Makefile,v 1.29 2013/10/11 20:39:25 naddy Exp $

NOT_FOR_ARCHS=	${LP64_ARCHS}

COMMENT=	shoot them nasty little bugs

DISTNAME=       xinvaders
DIST_SUBDIR=	xinvaders
PKGNAME=	xinvaders-2.0
REVISION =	2
CATEGORIES=	games

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c pthread-stubs xcb

MASTER_SITES=	ftp://ftp.uu.net/usenet/comp.sources.x/volume19/xinvaders/ \
		ftp://unix.hensa.ac.uk/archive/usenet/comp.sources.x/volume19/xinvaders/
DISTFILES=	part01.Z part02.Z part03.Z

EXTRACT_CASES=	*.Z) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${_PERL_FIX_SHAR} | /bin/sh;;

CONFIGURE_STYLE=	imake

USE_GROFF =	Yes
WRKDIST=	${WRKDIR}

pre-patch:
	@cd $(WRKSRC) ; mv xinvaders.ma xinvaders.man

NO_TEST=	Yes

.include <bsd.port.mk>
