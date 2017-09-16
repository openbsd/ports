# $OpenBSD: Makefile,v 1.5 2017/09/16 06:03:05 akoshibe Exp $

COMMENT =	emulator for rapid prototyping of software defined networks

DISTNAME =	mininet-0.0.20170813
REVISION =	2
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
BUILD_DEPENDS =		devel/help2man
RUN_DEPENDS =		net/socat \
			net/iperf

MAKE_ENV =	BINDIR=${PREFIX}/bin \
		MANDIR=${PREFIX}/man/man1 \
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
.for m in mnexec mn
	${INSTALL_MAN} ${WRKBUILD}/$m.1 ${PREFIX}/man/man1
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mininet
	${INSTALL_DATA} ${WRKBUILD}/README.md ${PREFIX}/share/doc/mininet

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mininet
.for f in examples/README.md examples/*.py
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/examples/mininet
.endfor

.include <bsd.port.mk>
