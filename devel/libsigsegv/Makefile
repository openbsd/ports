# $OpenBSD: Makefile,v 1.17 2013/03/21 08:45:16 ajacoutot Exp $

ONLY_FOR_ARCHS = 	alpha amd64 arm i386 hppa m68k m88k mips64 mips64el powerpc sparc64 sparc sh vax

COMMENT =		library for handling page faults in user mode

DISTNAME =		libsigsegv-2.10
SHARED_LIBS =		sigsegv 1.0
CATEGORIES =		devel

HOMEPAGE =		http://www.gnu.org/software/libsigsegv/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_GNU:=libsigsegv/}

SEPARATE_BUILD = 	Yes


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
# We know these values, so don't run the configure tests for them which may
# take hours to complete on certain OpenBSD platforms, such as mips64.
CONFIGURE_ENV +=	sv_cv_fault_linux_i386=no \
			sv_cv_fault_linux_i386_old=no \
			sv_cv_fault_linux_m68k=no

.include <bsd.port.mk>
