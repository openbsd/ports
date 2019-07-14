# $OpenBSD: Makefile,v 1.38 2019/07/14 00:39:35 naddy Exp $

COMMENT=	reciprocating engine for X11
PKGNAME=	xengine-1.0.1
REVISION=	5
CATEGORIES=	benchmarks x11
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Usenet/comp.sources.x/volume09/xengine/ \
		https://distfiles.nl/xengine/
DISTFILES=	part01.z patch1.z

PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c m

DIST_SUBDIR=	xengine
EXTRACT_CASES=	*.z) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${_PERL_FIX_SHAR} | /bin/sh;;
PATCH_DIST_STRIP=	-p1	# no ${PATCHFILES} but used below

WRKDIST=	${WRKDIR}
CONFIGURE_STYLE=	imake

NO_TEST=	Yes

do-distpatch:
	@cd $(WRKSRC) && ${PATCH} ${PATCH_DIST_ARGS} < xengine.patch1

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xengine
	@${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/xengine

.include <bsd.port.mk>
