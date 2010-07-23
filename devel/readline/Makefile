# $OpenBSD: Makefile,v 1.2 2010/07/23 18:29:47 naddy Exp $
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

MASTER_SITES =		${MASTER_SITE_GNU:=readline/}
MASTER_SITES0 =		${MASTER_SITE_GNU:=readline/${DISTNAME}-patches/}
CONFIGURE_STYLE =	gnu

PATCHFILES =		readline61-001:0 \
			readline61-002:0

.include <bsd.port.mk>
