# $OpenBSD: Makefile,v 1.1.1.1 2001/07/05 13:29:01 espie Exp $

COMMENT=	"NetHack derivative"

VERSION=	1.9.3
DISTNAME=	nethack_source_331_jtp_${VERSION:S/.//g}
PKGNAME=	falconseye-${VERSION}
CATEGORIES=	games x11
NEED_VERSION=	1.419
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://falconseye.sourceforge.net/

#MAINTAINER=	Peter Valchev <pvalchev@pobox.com>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= falconseye

LIB_DEPENDS=	SDL.0.1:sdl-*-!no_x11:devel/sdl
RUN_DEPENDS=	${LOCALBASE}/share/doc/nethack/Guidebook.txt:hackdata-*:games/hackdata
RUN_DEPENDS+=	timidity:timidity-*:audio/timidity

FAKE_FLAGS=	PREFIX="${PREFIX}" DESTDIR="${WRKINST}"

NHDIR=		"${PREFIX}/lib/falconseyedir"
MAKE_ENV=	NHDIR="${NHDIR}" NETHACKCONFIG="${NETHACKCONFIG}"

WRKDIST=	${WRKDIR}

NETHACKCONFIG=	${FILESDIR}/x-config
USE_X11=        Yes
MAKE_ENV+=	CFLAGS="${CFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include -L${X11BASE}/lib -L${LOCALBASE}/lib"

USE_GMAKE=	Yes
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
