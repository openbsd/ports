# $OpenBSD: Makefile,v 1.6 2006/08/05 16:41:08 kurt Exp $

COMMENT=	"PDF presentation post processor"

DISTNAME=	ppower4-0.9.4
PKGNAME=	${DISTNAME}p3
CATEGORIES=	print

HOMEPAGE=	http://www-sp.iti.informatik.tu-darmstadt.de/software/ppower4/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_CASES=		*.jar|*.pdf) cp ${FULLDISTDIR}/$$archive ${WRKDIR};;

MASTER_SITES=		${HOMEPAGE}

DISTFILES=		pp4sty.zip pp4p.jar manual.pdf leveldemo.zip
DIST_SUBDIR=		${DISTNAME}

BUILD_DEPENDS=		::print/teTeX/base
RUN_DEPENDS=		::java/javaPathHelper \
			::print/teTeX/base

MODULES=		java
MODJAVA_VER=		1.3+
MODJAVA_JRERUN=		Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

DOCDIR=			${PREFIX}/share/texmf-local/doc/latex/ppower4
JARDIR=			${PREFIX}/share/java
STYDIR=			${PREFIX}/share/texmf-local/tex/latex/ppower4
STYFILES=		${WRKDIR}/background.sty ${WRKDIR}/mpmulti.sty \
			${WRKDIR}/pause.sty ${WRKDIR}/pp4link.sty \
			${WRKDIR}/pp4slide.sty
EXFILES=		${WRKDIR}/leveldemo.tex
.for i in 1 2 3 4 5 6 7
EXFILES+=		${WRKDIR}/example.${i}
.endfor

pre-configure:
	@cp ${FILESDIR}/ppower4 ${WRKDIR}
	@perl -pi -e "s,%%PREFIX%%,${PREFIX},g" ${WRKDIR}/ppower4

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${JARDIR}
	${INSTALL_DATA_DIR} ${STYDIR}
	${INSTALL_DATA} ${WRKDIR}/manual.pdf ${DOCDIR}
	${INSTALL_DATA} ${EXFILES} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/pp4p.jar ${JARDIR}
	${INSTALL_DATA} ${STYFILES} ${STYDIR}
	${INSTALL_SCRIPT} ${WRKDIR}/ppower4 ${PREFIX}/bin

.include <bsd.port.mk>
