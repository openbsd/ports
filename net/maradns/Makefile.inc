# $OpenBSD: Makefile.inc,v 1.4 2004/12/16 00:31:23 alek Exp $

COMMENT=		"simple and performant DNS server"

DISTNAME=		maradns-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.maradns.org/

# stable: Public Domain
# devel: BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MAKE_FLAGS=		CC="${CC}" FLAGS="${CFLAGS}"

NO_REGRESS=		Yes
