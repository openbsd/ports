# $OpenBSD: Makefile,v 1.10 2014/03/24 09:08:46 espie Exp $

COMMENT =		library to edit command lines as they are typed in

V =			6.2
DISTNAME =		readline-${V}
PKGNAME =		readline-${V}pl4
PATCHFILES =		readline62-001:0 \
			readline62-002:0 \
			readline62-003:0 \
			readline62-004:0

LIBV =			0.1
SHARED_LIBS +=		ehistory ${LIBV}
SHARED_LIBS +=		ereadline ${LIBV}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://tiswww.case.edu/php/chet/readline/rltop.html

MAINTAINER =		Laurent Fanis <laurent@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=readline/}
MASTER_SITES0 =		${MASTER_SITE_GNU:=readline/${DISTNAME}-patches/}
CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes

MAKE_ENV =		RL_SHLIB_V=${LIBereadline_VERSION}
FAKE_FLAGS =		includedir=${TRUEPREFIX}/include/ereadline

pre-configure:
	perl -pi \
		-e 's,History: \(history\).  ,eHistory: (ehistory).,;' \
		-e 's,Readline: \(readline\).  ,eReadline: (ereadline).,;' \
		-e 's,RLuserman: \(rluserman\).  ,eRLuserman: (erluserman).,;' \
		-e 's,readline.info,ereadline.info,g;' \
		-e 's,history.info,ehistory.info,g;' \
		-e 's,rluserman.info,erluserman.info,g' \
		${WRKSRC}/doc/{readline,history,rluserman}.info

.include <bsd.port.mk>
