# $OpenBSD: Makefile,v 1.1.1.1 2010/10/19 21:22:52 espie Exp $

COMMENT = groff man/mandoc macro package
PKG_ARCH = *
CATEGORIES = textproc
DISTNAME = groff-mdoc-0.0
DISTFILES =

# BSD
PERMIT_DISTFILES_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_PACKAGE_CDROM = Yes

SHARE =	${PREFIX}/share/tmac
MSRCS = doc doc-ditroff doc-common doc-nroff doc-syms
NO_REGRESS = Yes

do-build:
	for i in ${MSRCS}; do \
	    sed -f ${FILESDIR}/strip.sed <${FILESDIR}/mdoc/$$i \
		>${WRKBUILD}/$$i; \
	done

do-install:
	${INSTALL_DATA_DIR} ${SHARE}
	${INSTALL_DATA_DIR} ${SHARE}/mdoc
	${SUBST_CMD} -c -g ${SHAREGRP} -o ${SHAREOWN} \
	    ${FILESDIR}/tmac.andoc ${SHARE}/tmac.andoc
	ln  ${SHARE}/tmac.andoc ${SHARE}/tmac.an
	for i in ${MSRCS}; do \
		${SUBST_CMD} -c -g ${SHAREGRP} -o ${SHAREOWN} \
		    ${WRKBUILD}/$$i ${SHARE}/mdoc/$$i; \
	done
	ln ${SHARE}/mdoc/doc ${SHARE}/tmac.doc


.include <bsd.port.mk>
