# $OpenBSD: Makefile,v 1.1.1.1 2016/11/22 11:05:51 jca Exp $

COMMENT =	profile HMMs for biological sequence analysis

V =		3.1b2
DISTNAME =	hmmer-$V
PKGNAME =	hmmer-3.1beta2

CATEGORIES =	biology

HOMEPAGE =	http://hmmer.org

MAINTAINER =	Senthil Kumar M <senthil.murugapiran@gmail.com>

# GPLv3 but see COPYRIGHT regarding patents
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread

MASTER_SITES =	http://eddylab.org/software/hmmer3/$V/

MAKE_FLAGS =	V=1

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	--disable-sse
.endif

post-install:
	${INSTALL_DATA} ${WRKDIST}/Userguide.pdf ${PREFIX}/share/doc/hmmer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hmmer
	${INSTALL_DATA} ${WRKDIST}/tutorial/* ${PREFIX}/share/examples/hmmer

.include <bsd.port.mk>
