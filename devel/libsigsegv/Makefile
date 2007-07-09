# $OpenBSD: Makefile,v 1.1.1.1 2007/07/09 20:05:29 jasper Exp $

ONLY_FOR_ARCHS= 	alpha amd64 arm m68k mips64 powerpc sparc64 sparc

COMMENT=		library for handling page faults in user mode

DISTNAME=		libsigsegv-2.4

CATEGORIES=		devel
HOMEPAGE=		http://libsigsegv.sourceforge.net/

MAINTAINER=		Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=libsigsegv/}

SEPARATE_BUILD= 	concurrent

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
