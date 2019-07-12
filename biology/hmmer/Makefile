# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:43 sthen Exp $

COMMENT =	profile HMMs for biological sequence analysis

V =		3.1b2
DISTNAME =	hmmer-$V
PKGNAME =	hmmer-3.1beta2
REVISION =	0

CATEGORIES =	biology

HOMEPAGE =	http://hmmer.org

MAINTAINER =	Senthil Kumar M <senthil.murugapiran@gmail.com>

# GPLv3 but see COPYRIGHT regarding patents
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

MASTER_SITES =	http://eddylab.org/software/hmmer3/$V/

MAKE_FLAGS =	V=1

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	--disable-sse
PKG_ARGS+=		-Damd64=0
.else
PKG_ARGS+=		-Damd64=1
.endif

post-install:
	${INSTALL_DATA} ${WRKDIST}/Userguide.pdf ${PREFIX}/share/doc/hmmer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hmmer
	${INSTALL_DATA} ${WRKDIST}/tutorial/* ${PREFIX}/share/examples/hmmer

.include <bsd.port.mk>
