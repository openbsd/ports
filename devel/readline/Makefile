# $OpenBSD: Makefile,v 1.3 2010/07/25 12:45:08 ajacoutot Exp $
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

pre-configure:
	perl -pi \
		-e 's,^#define RL_VERSION_MAJOR.*,#define RL_VERSION_MAJOR ${LIBereadline_VERSION:R},;' \
		-e 's,^#define RL_VERSION_MINOR.*,#define RL_VERSION_MINOR ${LIBereadline_VERSION:E},' \
		${WRKSRC}/readline.h
	perl -pi -e 's,^LIBVERSION=6.1,LIBVERSION=${LIBereadline_VERSION},' \
		${WRKSRC}/configure

.include <bsd.port.mk>
