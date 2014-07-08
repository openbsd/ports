# $OpenBSD: Makefile,v 1.1.1.1 2014/07/08 08:45:22 zhuk Exp $

CATEGORIES =	books devel
COMMENT =	POSIX manual pages
DISTNAME =	man-pages-posix-2013-a
PKGNAME =	${DISTNAME:C/(-[0-9]+)-/\1/}
PKG_ARCH =	*

MASTER_SITES =	https://www.kernel.org/pub/linux/docs/man-pages/man-pages-posix/
EXTRACT_SUFX =	.tar.xz

# custom copyleft license, see POSIX-COPYRIGHT
PERMIT_PACKAGE_CDROM =	Yes

USE_GROFF =	Yes
NO_BUILD =	Yes
NO_TEST =	Yes

DOCDIR =	${PREFIX}/share/doc/posix
SUBST_VARS =	DOCDIR

# mapping of categories: source => destination
MANS =		0p	3
MANS +=		1p	1
MANS +=		3p	3

do-install:
.for _src _dst in ${MANS}
	${INSTALL_DATA_DIR} ${DOCDIR}/man/man${_dst}
	${INSTALL_DATA} ${WRKSRC}/man${_src}/*.${_src} ${DOCDIR}/man/man${_dst}
	cd ${DOCDIR}/man/man${_dst}; \
	for page in *.${_src}; do \
		echo mv $$page $${page%${_src}}${_dst} >&2; \
		mv $$page $${page%${_src}}${_dst}; \
	done

# 1. Tweak page names to make whatis happier.
# 2. Change Linux references in PROLOG sections to "generic" ones.
	perl -pi \
		-e 's,^(\.TH [^"]+)"${_src}",$$1"${_dst}",i;' \
		-e 's,Linux(\.| (?:behavior|implementation|manual)),OS$$1,g;' \
		${DOCDIR}/man/man${_dst}/*.${_dst}
.endfor
	${INSTALL_DATA} ${WRKSRC}/POSIX-COPYRIGHT ${DOCDIR}
# Install original package until mandoc(1) receive tbl(7) support,
# to obey the license rules
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/${DISTFILES} \
		${DOCDIR}

.include <bsd.port.mk>
