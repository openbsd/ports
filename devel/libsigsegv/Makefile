# $OpenBSD: Makefile,v 1.8 2010/04/02 07:43:14 jasper Exp $

ONLY_FOR_ARCHS = 	alpha amd64 arm i386 hppa m68k mips64 mips64el powerpc sparc64 sparc sh

COMMENT =		library for handling page faults in user mode

DISTNAME =		libsigsegv-2.8
SHARED_LIBS =		sigsegv 1.0
CATEGORIES =		devel
HOMEPAGE =		http://libsigsegv.sourceforge.net/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_GNU:=libsigsegv/}

SEPARATE_BUILD = 	concurrent

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
