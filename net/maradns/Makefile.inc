# $OpenBSD: Makefile.inc,v 1.3 2004/10/31 19:04:56 sturm Exp $

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

MAKE_FLAGS=		CC="${CC}" FLAGS="${CFLAGS}"

NO_REGRESS=		Yes
