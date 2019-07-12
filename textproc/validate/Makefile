# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:16 sthen Exp $

COMMENT=		HTML, XHTML validator

DISTNAME=		validate-1.2.2
REVISION=		1
CATEGORIES=		textproc

HOMEPAGE=		http://www.htmlhelp.com/tools/validator/offline/

# Perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=
EXTRACT_CASES=		*) cp ${FULLDISTDIR}/$$archive ${WRKDIST}/validate ;;

RUN_DEPENDS=		textproc/lq-sp \
			textproc/wdg-sgml-lib

WRKDIST=		${WRKDIR}
NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/validate

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/validate ${PREFIX}/bin/

.include <bsd.port.mk>
