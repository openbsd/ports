# $OpenBSD: Makefile,v 1.15 2000/10/22 14:02:58 espie Exp $

PKGNAME=	xengine-1.0.1
CATEGORIES=	benchmarks x11
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Usenet/comp.sources.x/volume09/xengine/
DISTFILES=	part01.z patch1.z

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=	xengine
EXTRACT_CASES=	*.z) zcat ${FULLDISTDIR}/$$archive | gunshar ;;
PATCH_DIST_STRIP=	-p1	# no ${PATCHFILES} but used below

BUILD_DEPENDS=	gunshar::archivers/gshar+gunshar

WRKDIST=	${WRKDIR}
CONFIGURE_STYLE=	imake

do-distpatch:
	@cd $(WRKSRC) && ${PATCH} ${PATCH_DIST_ARGS} < xengine.patch1

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xengine
	@${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/xengine

.include <bsd.port.mk>
