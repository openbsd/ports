# $OpenBSD: Makefile,v 1.2 2015/04/11 13:49:14 jsg Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	sauerbraten client
COMMENT-data=	sauerbraten data
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sauerbraten/}

HOMEPAGE=	http://sauerbraten.org/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

MULTI_PACKAGES=	-main -data

N=		sauerbraten
V=		20130203
REVISION=	1
PKGNAME=	${N}-${V}
PKGNAME-main=	${N}-${V}
PKGNAME-data=	${N}-data-${V}
DISTNAME=	${N}_2013_02_03_collect_edition_linux
EXTRACT_SUFX=	.tar.bz2

PKG_ARCH-data=	*

# zlib (code) + no modification (data)
PERMIT_PACKAGE_CDROM=	no modify
PERMIT_PACKAGE_FTP=	no modify
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/${N}/src
USE_GMAKE=		Yes
MAKE_ENV+=              CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
NO_TEST=		Yes

RUN_DEPENDS-main +=	${BASE_PKGPATH},-data

LIB_DEPENDS-main=	devel/sdl-mixer \
			devel/sdl-image \
			net/enet
WANTLIB-main=		GL X11 SDL SDL_image SDL_mixer c enet m pthread stdc++ z

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sauer_client ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/sauer_server ${PREFIX}/libexec
	${SUBST_CMD} -c ${FILESDIR}/sauerbraten.sh ${WRKSRC}/sauerbraten.sh
	${INSTALL_SCRIPT} ${WRKSRC}/sauerbraten.sh ${PREFIX}/bin/sauerbraten
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${N}
	cp -R ${WRKDIR}/${N}/docs/* ${PREFIX}/share/doc/${N}/
	@perl -pi -e s,docs/,, ${WRKDIR}/${N}/README.html
	${INSTALL_DATA} ${WRKDIR}/${N}/README.html ${PREFIX}/share/doc/${N}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	cp -R ${WRKDIR}/${N}/packages ${PREFIX}/share/${N}
	cp -R ${WRKDIR}/${N}/data ${PREFIX}/share/${N}

.include <bsd.port.mk>
