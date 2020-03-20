# $OpenBSD: Makefile,v 1.9 2020/03/20 16:44:25 naddy Exp $

COMMENT=		prover9/mace4 GUI

DISTNAME=		p9m4-v05
PKGNAME=		${DISTNAME:S/v//}
REVISION =		2

MASTER_SITES=		${HOMEPAGE}/gui/

CONFIGURE_STYLE=	# empty

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

MODPY_ADJ_FILES=	control.py files.py my_setup.py options.py \
			partition_input.py platforms.py prover9-mace4.py \
			utilities.py wx_utilities.py

RUN_DEPENDS=		devel/py-modulegraph \
			math/prover9/ladr \
			x11/py-wxPython

LIBEXEC_DIR=		${PREFIX}/libexec/prover9/p9m4/
IMAGES_DIR=		${PREFIX}/share/p9m4/Images/
SAMPLES_DIR=		${PREFIX}/share/p9m4/Samples/

# The tarball is a mess and not really designed for installation.
post-extract:
	rm -r ${WRKSRC}/Samples/Kauer.in\~
	find ${WRKSRC} -type f -name \*~ -delete

pre-configure:
	${SUBST_CMD} ${WRKSRC}/files.py
	${SUBST_CMD} -m 555 -c ${FILESDIR}/prover9-mace4.sh ${WRKSRC}/prover9-mace4

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/prover9-mace4 ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${LIBEXEC_DIR} ${IMAGES_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/Images/* ${IMAGES_DIR}
	cd ${WRKSRC}/Samples/ && umask 022 && \
		pax -rw . ${SAMPLES_DIR}
.for m in ${MODPY_ADJ_FILES}
	${INSTALL_SCRIPT} ${WRKSRC}/$m ${LIBEXEC_DIR}
.endfor

.include <bsd.port.mk>
