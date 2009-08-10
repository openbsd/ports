# $OpenBSD: Makefile,v 1.18 2009/08/10 06:31:42 kili Exp $

COMMENT=	NetHack derivative

VERSION=	1.9.3
DISTNAME=	nethack_source_331_jtp_${VERSION:S/.//g}
PKGNAME=	falconseye-${VERSION}p3
CATEGORIES=	games x11
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://falconseye.sourceforge.net/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c curses m pthread pthread-stubs usbhid xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=falconseye/}

LIB_DEPENDS=	SDL::devel/sdl
RUN_DEPENDS=	:hackdata-*:games/hackdata

FAKE_FLAGS=	PREFIX="${PREFIX}"

GAMEDIR=	lib/falconseyedir
NHDIR=		${PREFIX}/${GAMEDIR}
MAKE_ENV=	NHDIR="${NHDIR}" NETHACKCONFIG="${NETHACKCONFIG}"
SUBST_VARS=	GAMEDIR

WRKDIST=	${WRKDIR}

NETHACKCONFIG=	${FILESDIR}/x-config
USE_X11=        Yes
MAKE_ENV+=	CFLAGS="${CFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include -L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

do-configure:
	@cd ${WRKSRC}/sys/unix && ${SH} setup.sh symlinks

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
