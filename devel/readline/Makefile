# $OpenBSD: Makefile,v 1.1.1.1 2010/07/23 14:51:11 laurent Exp $
COMMENT =		library to edit command lines as they are typed in

V =			6.1
DISTNAME =		readline-${V}

SHARED_LIBS +=  	ehistory                   0.0 # 6.1
SHARED_LIBS +=  	ereadline                  0.0 # 6.1

CATEGORIES =		devel

HOMEPAGE =		http://tiswww.case.edu/php/chet/readline/rltop.html

MAINTAINER =		Laurent Fanis <laurent@openbsd.org>

#GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		ftp://ftp.cwru.edu/pub/bash/
CONFIGURE_STYLE =	gnu

PATCHFILES =		readline-6.1-patches/readline61-001 \
			readline-6.1-patches/readline61-002

.include <bsd.port.mk>
