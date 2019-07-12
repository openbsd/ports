# $OpenBSD: Makefile,v 1.26 2019/07/12 20:44:40 sthen Exp $

COMMENT =		library for handling page faults in user mode

DISTNAME =		libsigsegv-2.12
SHARED_LIBS =		sigsegv 1.0
CATEGORIES =		devel

HOMEPAGE =		https://www.gnu.org/software/libsigsegv/

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=libsigsegv/}

SEPARATE_BUILD = 	Yes

CONFIGURE_STYLE =	gnu
# We know these values, so don't run the configure tests for them which may
# take hours to complete on certain OpenBSD platforms, such as mips64.
CONFIGURE_ENV +=	sv_cv_fault_linux_i386=no \
			sv_cv_fault_linux_i386_old=no \
			sv_cv_fault_linux_m68k=no

.include <bsd.port.mk>
