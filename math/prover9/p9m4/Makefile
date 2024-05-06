COMMENT=		prover9/mace4 GUI

DISTNAME=		p9m4-v05
PKGNAME=		${DISTNAME:S/v//}
REVISION =		4

SITES=			${HOMEPAGE}/gui/

CONFIGURE_STYLE=	# empty

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

# explicit because of NO_BUILD
MODPY_BUILDDEP=		Yes

MODPY_ADJ_FILES=	control.py files.py my_setup.py options.py \
			partition_input.py platforms.py prover9-mace4.py \
			utilities.py wx_utilities.py

RUN_DEPENDS=		devel/py-modulegraph${MODPY_FLAVOR} \
			math/prover9/ladr \
			x11/py-wxPython${MODPY_FLAVOR}

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
	2to3 -wn --no-diffs ${LIBEXEC_DIR}/*
	${MODPY_BIN} -m compileall ${LIBEXEC_DIR}
.endfor

.include <bsd.port.mk>
