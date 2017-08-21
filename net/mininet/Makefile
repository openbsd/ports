# $OpenBSD: Makefile,v 1.1.1.1 2017/08/21 18:47:12 akoshibe Exp $

COMMENT =	emulator for rapid prototyping of software defined networks

DISTNAME =	mininet-0.0.20170813
GH_ACCOUNT =	mininet
GH_PROJECT =	mininet
GH_COMMIT =	87e26ef931ee6063332ceba77db472140f832d3a

CATEGORIES =	net

HOMEPAGE =	http://mininet.org

MAINTAINER =	Ayaka Koshibe <akoshibe@gmail.com>

# Custom BSD-3 clause-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
BUILD_DEPENDS =		devel/help2man \
			devel/pep8
RUN_DEPENDS =		net/socat \
			net/iperf \
			devel/py-pexpect \
			devel/pyflakes

MAKE_ENV =	BINDIR=${LOCALBASE}/bin \
		MANDIR=${LOCALBASE}/man/man1 \
		PKGDIR=${MODPY_SITEPKG} \
		PYTHON=${MODPY_BIN}
do-build:
	$(CC) ${WRKSRC}/mnexec.c -o ${WRKBUILD}/mnexec
	help2man -N -n "create a Mininet network."  --no-discard-stderr \
	"${MODPY_BIN} -B ${WRKBUILD}/bin/mn" -o ${WRKBUILD}/mn.1
	help2man -N -n "execution utility for Mininet."  -h "-h" -v "-v" \
	--no-discard-stderr ${WRKBUILD}/mnexec -o ${WRKBUILD}/mnexec.1

pre-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mnexec ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/mnexec.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/mn.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mininet
	${INSTALL_DATA} ${WRKBUILD}/README.md ${PREFIX}/share/doc/mininet
.include <bsd.port.mk>
