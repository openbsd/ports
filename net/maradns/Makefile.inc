# $OpenBSD: Makefile.inc,v 1.1.1.1 2002/11/15 20:19:32 brad Exp $

COMMENT=		"simple and performant DNS server"

DISTNAME=		maradns-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.maradns.org

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

# stable: Public Domain - devel: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=		CC="${CC}" FLAGS="${CFLAGS}"

NO_REGRESS=		Yes
