# $OpenBSD: Makefile,v 1.5 2010/10/18 17:48:12 espie Exp $
COMMENT =		library to edit command lines as they are typed in

V =			6.1
DISTNAME =		readline-${V}

REVISION =		0

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
USE_GROFF =	Yes

PATCHFILES =		readline61-001:0 \
			readline61-002:0

pre-configure:
	perl -pi \
		-e 's,^#define RL_VERSION_MAJOR.*,#define RL_VERSION_MAJOR ${LIBereadline_VERSION:R},;' \
		-e 's,^#define RL_VERSION_MINOR.*,#define RL_VERSION_MINOR ${LIBereadline_VERSION:E},' \
		${WRKSRC}/readline.h
	perl -pi -e 's,^LIBVERSION=6.1,LIBVERSION=${LIBereadline_VERSION},' \
		${WRKSRC}/configure
	perl -pi \
		-e 's,readline.info,ereadline.info,g;' \
		-e 's,history.info,ehistory.info,g;' \
		-e 's,rluserman.info,erluserman.info,g' \
		${WRKSRC}/doc/{readline,history,rluserman}.info

.include <bsd.port.mk>
