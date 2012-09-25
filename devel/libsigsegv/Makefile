# $OpenBSD: Makefile,v 1.14 2012/09/25 21:22:51 brad Exp $

ONLY_FOR_ARCHS = 	alpha amd64 arm i386 hppa m68k m88k mips64 mips64el powerpc sparc64 sparc sh vax

COMMENT =		library for handling page faults in user mode

DISTNAME =		libsigsegv-2.10
SHARED_LIBS =		sigsegv 1.0
CATEGORIES =		devel

HOMEPAGE =		http://www.gnu.org/software/libsigsegv/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_GNU:=libsigsegv/}

SEPARATE_BUILD = 	Yes

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
