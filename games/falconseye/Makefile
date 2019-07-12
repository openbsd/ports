# $OpenBSD: Makefile,v 1.30 2019/07/12 21:02:20 sthen Exp $

COMMENT =	NetHack derivative

VERSION =	1.9.3
DISTNAME =	nethack_source_331_jtp_${VERSION:S/.//g}
PKGNAME =	falconseye-${VERSION}
REVISION =	8
CATEGORIES =	games x11
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://falconseye.sourceforge.net/

MAINTAINER =	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE=	Yes

WANTLIB =	X11 Xext c curses m pthread usbhid xcb SDL

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=falconseye/}

LIB_DEPENDS =	devel/sdl
RUN_DEPENDS =	games/hackdata

FAKE_FLAGS =	PREFIX="${PREFIX}"

GAMEDIR =	lib/falconseyedir
NHDIR =		${PREFIX}/${GAMEDIR}
MAKE_ENV =	NHDIR="${NHDIR}" NETHACKCONFIG="${NETHACKCONFIG}"
SUBST_VARS =	GAMEDIR

WRKDIST =	${WRKDIR}

NETHACKCONFIG =	${FILESDIR}/x-config
MAKE_ENV +=	CFLAGS="${CFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include -L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_TEST =	Yes

do-configure:
	@cd ${WRKSRC}/sys/unix && /bin/sh setup.sh symlinks

post-build:
	@cd ${WRKSRC}/util && ${MAKE_ENV} ${MAKE_PROGRAM} recover
	@cd ${WRKSRC}/util && ln -f recover frecover
	@cd ${WRKSRC}/doc && perl -p ${FILESDIR}/substitute <nethack.6 >falconseye.6
	@cd ${WRKSRC}/doc && perl -p ${FILESDIR}/substitute <recover.6 >frecover.6

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/util/recover ${PREFIX}/bin/frecover
	@cd ${WRKSRC}/doc && \
		${INSTALL_MAN} recover.6 ${PREFIX}/man/man6/frecover.6
	@cd ${WRKSRC}/doc && \
		${INSTALL_MAN} nethack.6 ${PREFIX}/man/man6/falconseye.6

.include <bsd.port.mk>
